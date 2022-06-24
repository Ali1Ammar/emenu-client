import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/category/new_category.dart';
import 'package:manger/shared/grid_view_custom.dart';
import 'package:manger/shared/widget/header.dart';

import 'package:manger/category/category_card.dart';
import 'package:manger/category/category_mange_controller.dart';
import 'package:shared/shared.dart';

class CategoryMangePage extends ConsumerWidget {
  const CategoryMangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryMangerControllerProvider);
    final cont = ref.watch(categoryMangerControllerProvider.notifier);

    return ScaffoldPage(
      header: const Header(title: "ادارة طرق الطلب"),
      content: state.map<Widget>(
          init: (_) => _.isError ? const Text("error") : const CenterLoading(),
          loaded: (state) {
            if (state.editMode) {
              return ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state.isRefreshing) const CenterLoading(),
                  CreateCategoryWidget(
                    onDone: (done) {
                      cont.addCategory(done);
                    },
                    onCancel: () {
                      cont.setEditMode(false, null);
                    },
                  ),
                ],
              );
            }
            return GridViewCustomBuilder(
              itemCount: state.categorys.length + 1,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return FilledButton(
                    onPressed: () {
                     cont
                          .setEditMode(true, null);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("اضافة جديدة"),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(FluentIcons.add)
                      ],
                    ),
                  );
                } else {
                  final item = state.categorys[i - 1];
                  return CategoryCard(
                    item: item,
                    // onEdit: () {
                    //   ref
                    //       .read(categoryMangerControllerProvider.notifier)
                    //       .setEditMode(true, i - 1);
                    // },
                    // onDelete: () async {
                    //   cont.onDelete(item);
                    // },
                  );
                }
              },
            );
          }),
    );
  }
}
