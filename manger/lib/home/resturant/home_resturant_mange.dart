import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/app_setting/setting_controller.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/login/user.dart';
import 'package:manger/order_track/order_track_controller.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/new_rest/new_category.dart';
import 'package:manger/new_rest/new_kicthen.dart';
import 'package:manger/new_rest/new_ordertype.dart';
import 'package:manger/new_rest/new_spot.dart';
import 'package:manger/shared/context_helper.dart';
import 'package:manger/shared/grid_view_custom.dart';
import 'package:shared/shared.dart';

class HomeResturantMangePage extends ConsumerWidget {
  const HomeResturantMangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cont = ref.watch(resturnatHomeControllerProvider);
    final state = ref.watch(currentLinkedResturant);
    final rest = state.value;
    var shouldDisplayKitchen = rest?.orderType
        .any((element) => element.selectKitchenVia != SelectKitchenVia.None);
    final isDark = FluentTheme.of(context).brightness == Brightness.dark;
    final isRestAdmin = ref
        .watch(loginProvider)
        ?.user
        .isRestAdmin ?? false;
    return ScaffoldPage(
      header: PageHeader(
        title: Row(
          children: [
            if (rest != null) ...[
              SizedBox.square(
                dimension: 120,
                child: ClipOval(
                  child: Image.network(
                    getImageUrl(rest.img, context.riverpod.read),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(" ادارة المطعم "),
              ),
              Text(
                rest.name,
                style: TextStyle(
                    fontSize:
                        FluentTheme.of(context).typography.title?.fontSize),
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                  onPressed: () {
                    ref.read(settingProvider.notifier).toggle();
                  },
                  icon: Icon(
                    !isDark
                        ? FluentIcons.brightness
                        : FluentIcons.lower_brightness,
                    size: 20,
                  )),
              IconButton(
                  onPressed: () {
                    ref.refresh(loginProvider.notifier);
                    ref.read(autoRouteProvider).pushAndPopUntil(
                        const SystemLoginPageRoute(),
                        predicate: (_) => true);
                  },
                  icon: const Icon(
                    FluentIcons.sign_out,
                    size: 20,
                  )),
              Column(
                children: [
                  Text(rest.isDisabled ? "غير نشط" : "نشط"),
                  Button(
                      child: Text(rest.isDisabled ? "تفعيل" : "ايقاف"),
                      onPressed: () {
                        cont.toggleEnable();
                      })
                ],
              )
            ] else
              const Text(" ادارة المطعم ")
          ],
        ),
      ),
      content: Column(
        children: [
          if (state.isRefreshing) const ProgressRing(),
          if (state.isError) ...[
            Text(state.asError!.error.toString()),
            Button(
                child: const Text("restart"),
                onPressed: () {
                  cont.initResturant();
                })
          ],
          if (rest != null)
            ...[
              if (rest.mainCategory.isEmpty) const CreateCategoryWidget(),
              if (rest.kitchen.isEmpty) const CreateKitchenWidget(),
              if (rest.orderType.isEmpty) const CreateOrderTypeWidget(),
              if (rest.customerSpot.isEmpty) const CreateCusmoterSpotWidget(),
            ].map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: e,
                    ),
                  ),
                )),
          if (rest != null)
            Expanded(
              child: GridViewCustom(
                children: [
                  if (rest.mainCategory.isNotEmpty && rest.kitchen.isNotEmpty)
                    FilledButton(
                        child: centerTextButton("اعدادات الوجبات", context),
                        onPressed: () {
                          ref
                              .read(autoRouteProvider)
                              .push(const MealMangePageRoute());
                        }),
                  if (rest.kitchen.isNotEmpty) ...[
                    FilledButton(
                        child: centerTextButton("تتبع جميع الطلبات", context),
                        onPressed: () {
                          ref.read(autoRouteProvider).push(OrderTrackPageRoute(
                              orderTrack: OrderTrack.resturant()));
                        }),
                    if (shouldDisplayKitchen!)
                      ...rest.kitchen.map((e) => FilledButton(
                          child: centerTextButton(e.name, context),
                          onPressed: () {
                            ref.read(autoRouteProvider).push(
                                OrderTrackPageRoute(
                                    orderTrack: OrderTrack.kitchen(e)));
                          })),
                    FilledButton(
                        child: centerTextButton("اعدادت طرق الطلب", context),
                        onPressed: null),
                    FilledButton(
                        child: centerTextButton("اعدادت التصنيفات", context),
                        onPressed: null),
                    FilledButton(
                        child: centerTextButton("اعدادت الطاولات", context),
                        onPressed: () {
                          ref
                              .read(autoRouteProvider)
                              .push(const CustomerSpotPageRoute());
                        }),
                    FilledButton(
                        child: centerTextButton("التقيمات", context),
                        onPressed: () {
                          ref
                              .read(autoRouteProvider)
                              .push(const CustomerFeedbackPageRoute());
                        }),
                    if (isRestAdmin)
                      FilledButton(
                          child: centerTextButton("ادارة الموطفين ", context),
                          onPressed: () {
                            ref
                                .read(autoRouteProvider)
                                .push(const StaffMangePageRoute());
                          }),
                  ]
                ].map((e) => e).toList(),
              ),
            )
        ],
      ),
    );
  }

  Widget centerTextButton(String txt, BuildContext context) => Center(
          child: Text(
        txt,
        style: TextStyle(
            fontSize: FluentTheme.of(context).typography.title?.fontSize),
      ));
}
