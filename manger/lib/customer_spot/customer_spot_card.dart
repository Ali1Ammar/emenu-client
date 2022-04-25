import 'package:fluent_ui/fluent_ui.dart';
import 'package:manger/shared/qr_code.dart';
import 'package:shared/shared.dart';

class CustomerSpotCard extends StatelessWidget {
  final CustomerSpot item;
  final String qrCode;
  final VoidCallback onSave;
  final VoidCallback onDelete;

  const CustomerSpotCard(
      {Key? key,
      required this.item,
      required this.qrCode,
      required this.onSave,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = FluentTheme.of(context).typography.subtitle;
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
            child: Text(item.identifier, style: textStyle),
          ),
          Flexible(
            child: QrDisplatWidget(
              data: qrCode,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(item.id.toString()),
                const Expanded(child: SizedBox()),
                IconButton(
                    icon: const Icon(FluentIcons.delete, size: 18),
                    onPressed: onDelete),
                IconButton(
                    icon: const Icon(FluentIcons.save, size: 18),
                    onPressed: onSave),
              ],
            ),
          )
        ],
      ),
    );
  }
}
