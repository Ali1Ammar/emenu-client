import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/shared/context_helper.dart';
import 'package:shared/shared.dart';

class CategoryCard extends StatelessWidget {
  final MainCategory item;
  const CategoryCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typography = FluentTheme.of(context).typography;

    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(item.title, style: typography.title),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Wrap(
                    spacing: 10,
                    children: [
                      ...item.children.map((e) => Text(
                            e.title,
                            style: typography.subtitle,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox.expand(
                      child: Image.network(
                        getImageUrl(item.img, context.riverpod.read),
                        fit: BoxFit.fitHeight,

                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
