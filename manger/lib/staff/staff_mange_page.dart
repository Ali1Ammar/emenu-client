import 'package:fluent_ui/fluent_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:manger/new_rest/new_staff.dart';
import 'package:manger/shared/grid_view_custom.dart';
import 'package:manger/shared/widget/header.dart';

import 'package:manger/staff/staff_card.dart';
import 'package:manger/staff/staff_mange_controller.dart';
import 'package:shared/shared.dart';

class StaffMangePage extends ConsumerWidget {
  const StaffMangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffMangerControllerProvider);
    final cont = ref.watch(staffMangerControllerProvider.notifier);

    return ScaffoldPage(
      header: const Header(title: "ادارة الموظفيين"),
      content: state.map<Widget>(
          init: (_) => _.isError ? const Text("error") : const CenterLoading(),
          loaded: (state) {
            if (state.editMode) {
              return ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state.isRefreshing) const CenterLoading(),
                  CreateStaffWidget(
                    onDone: (done) {
                      cont.addStaff(done);
                    },
                    onCancel: () {
                      cont
                          .setEditMode(false, null);
                    },
                  ),
                ],
              );
            }
            return GridViewCustomBuilder(
              itemCount: state.staffs.length + 1,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return FilledButton(
                    onPressed: () {
                      ref
                          .read(staffMangerControllerProvider.notifier)
                          .setEditMode(true, null);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("اضافة موضف جديدة"),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(FluentIcons.add)
                      ],
                    ),
                  );
                } else {
                  final item = state.staffs[i - 1];
                  return StaffCard(
                    item: item,
                    // onEdit: () {
                    //   ref
                    //       .read(staffMangerControllerProvider.notifier)
                    //       .setEditMode(true, i - 1);
                    // },
                    onDelete: () async {
                      cont.onDelete(item);
                    },
                  );
                }
              },
            );
          }),
    );
  }
}
