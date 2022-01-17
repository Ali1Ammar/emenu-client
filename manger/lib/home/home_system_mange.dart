import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/home/home_state.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/shared/context_helper.dart';
import 'package:manger/shared/widget/resturant_card.dart';

class HomeSystemPage extends StatelessWidget {
  final LoadedAllResturant data;
  const HomeSystemPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        commandBar: SizedBox(
          width: 400,
          child: TextBox(
            maxLines: 1,
            suffix: Icon(FluentIcons.search),
          ),
        ),
        title: Text("ادارة نظام"),
      ),
      content: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300),
          itemCount: data.resturnats.length + 1,
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
              final item = data.resturnats[i - 1];
              return ResturantCard(resturant: item);
            }
          }),
    );
  }
}
