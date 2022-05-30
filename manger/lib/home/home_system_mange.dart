import 'package:fluent_ui/fluent_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/shared/context_helper.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:manger/shared/widget/header.dart';
import 'package:manger/shared/widget/resturant_card.dart';
import 'package:shared/shared.dart';

//TODO complete this page , add edit resturant by admin , add other admin function
class HomeSystemPage extends StatelessWidget {
  final List<Resturant> resturants;
  const HomeSystemPage({Key? key, required this.resturants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: Header(
        title: "ادارة نظام",
        icons: [
          IconButton(
              icon: const Icon(FontAwesomeIcons.arrowRightFromBracket),
              onPressed: () {
                context.riverpod.refresh(loginProvider);
                context.riverpod.read(autoRouteProvider).push( const SystemLoginPageRoute() );
              })
        ],
      ),
      content: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300),
          itemCount: resturants.length + 1,
          itemBuilder: (context, i) {
            if (i == 0) {
              return FilledButton(
                onPressed: () {
                  context.riverpod
                      .read(autoRouteProvider)
                      .push(const NewResturantPageRoute());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("اضافة مطعم جديد"),
                    SizedBox(
                      height: 30,
                    ),
                    Icon(FluentIcons.add)
                  ],
                ),
              );
            } else {
              final item = resturants[i - 1];
              return ResturantCard(
                resturant: item,
                onToggleActivate: () async {
                  //TODO we need controller here
                  await context.riverpod
                      .read(resturantServiceProvider)
                      .changeActiveByAdmin(item.id, !item.isDisabled);
                  // data.resturnats[i - 1] = item.isDisabled;
                },
              );
            }
          }),
    );
  }
}
