import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/login/user.dart';
import 'package:manger/shared/widget/labeled_widget.dart';

class StaffCard extends StatelessWidget {
  final User item;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  const StaffCard(
      {Key? key,
      required this.item,
      required this.onEdit,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = FluentTheme.of(context).typography.bodyLarge;
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabledWidget(label: "الاسم", text: item.name),
            LabledWidget(label: "اسم المستخدم", text: item.userName),
            const LabledWidget(label: "الصلاحيات", text: ""),
            ...item.permissons.map((e) => Text(e.ar, style: style)),
            const Expanded(child: SizedBox()),
            Row(
              children: [
                if (!item.isRestAdmin)
                  IconButton(
                      onPressed: onDelete,
                      icon: const Icon(FluentIcons.delete)),
                IconButton(
                    onPressed: onEdit, icon: const Icon(FluentIcons.edit))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
