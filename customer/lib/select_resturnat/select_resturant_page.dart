import 'package:customer/select_resturnat/select_resturant_controller.dart';
import 'package:customer/widget/resturant_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/shared.dart';

class SelectResturantPage extends HookConsumerWidget {
  const SelectResturantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectRestController);
    final cont = ref.watch(selectRestController.notifier);

    return Scaffold(
        appBar: AppBar(
          title: const Text("اختيار مطعم"),
        ),
        body: state.map<Widget>(
            loadingInit: (_) => const CenterLoading(),
            loadResturants: (loaded) {
              if( loaded.resturnats.isEmpty) return const EmptyWidget();
              return ListView.builder(
                  itemCount: loaded.resturnats.length,
                  itemBuilder: (context, i) {
                    final item = loaded.resturnats[i];
                    return InkWell(
                        onTap: () {
                          cont.selectResturnat(item);
                        },
                        child: ResturantCard(resturant: item));
                  });
            },
            loadingOrderType: (_) => const CenterLoading(),
            loadSelectedResturant: (loaded) {
              return ListView.builder(
                  itemCount: loaded.resturant.orderType .length,
                  itemBuilder: (context, i) {
                    final item = loaded.resturant.orderType[i];
                    return InkWell(
                        onTap: () {
                          cont.selectOrderType(item);
                        },
                        child: Text(item.name));
                  });
            }));
  }
}
