import 'package:customer/app_setting/setting_controller.dart';
import 'package:customer/select_resturnat/select_resturant_controller.dart';
import 'package:customer/select_resturnat/select_resturant_state.dart';
import 'package:customer/widget/fade_widget.dart';
import 'package:customer/widget/resturant_card.dart';
import 'package:customer/widget/url_change_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class SelectResturantPage extends HookConsumerWidget {
  const SelectResturantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectRestController);
    final cont = ref.watch(selectRestController.notifier);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return WillPopScope(
      onWillPop: cont.tryPop,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("اختيار مطعم"),
            leading: const BackButton(),
            actions: [
              if (state is LoadResturants)
                IconButton(
                    onPressed: () {
                      cont.toggleSearch();
                    },
                    icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    ref.read(settingProvider.notifier).toggle();
                  },
                  icon: Icon(
                      !isDark ? Icons.brightness_7_sharp : Icons.brightness_2)),
              // IconButton(
              //     onPressed: () {
              //       mDnsQueryIp();
              //     },
              //     icon: Icon(Icons.dns)),
              const ChangeUrlIconWidget()
            ],
          ),
          body: state.map<Widget>(
              error: (err) => Column(
                    children: [
                      Text(err.error),
                      OutlinedButton(
                        child: const Text("اعادة المحاولة"),
                        onPressed: () {
                          cont.init();
                        },
                      )
                    ],
                  ),
              loadingInit: (_) => const CenterLoading(),
              loadResturants: (loaded) {
                if (loaded.resturnats.isEmpty) return const EmptyWidget();
                final isSearchEnable = loaded.fuzzySearch != null;
                final rest = (isSearchEnable
                    ? loaded.resturnatSearch
                    : loaded.resturnats);
                return ListView.builder(
                    itemCount: rest.length + 1,
                    itemBuilder: (context, _i) {
                      if (_i == 0) {
                        return FadeWidget(
                          isFade: !isSearchEnable,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (val) {
                                cont.search(val);
                              },
                              decoration: const InputDecoration(
                                  labelText: "اسم المطعم",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)))),
                            ),
                          ),
                        );
                      }
                      final i = _i - 1;
                      final item = rest[i];
                      return InkWell(
                          onTap: () {
                            cont.selectResturnat(item);
                          },
                          child: ResturantCard(resturant: item));
                    });
              },
              loadingOrderType: (_) => const CenterLoading(),
              loadSelectedResturant: (loaded) {
                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "اختر طريقة الطلب",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    ...loaded.resturant.orderType.map((item) => ListTile(
                          title: Text(
                            item.name,
                          ),
                          onTap: () {
                            cont.selectOrderType(item);
                          },
                        ))
                  ],
                );
              })),
    );
  }
}
