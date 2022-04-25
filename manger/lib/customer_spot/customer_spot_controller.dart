import 'package:file_picker/file_picker.dart';
import 'package:manger/shared/qr_code.dart';
import 'package:path/path.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final customerSpotControllerProvider =
    Provider.autoDispose((_) => CustomerSpotController(_.read));

class CustomerSpotController {
  final Reader read;

  CustomerSpotController(this.read);
  Future<String?> saveItem(CustomerSpot item) {
    return saveAllItems([item]);
  }

  Future<String?> saveAllItems(List<CustomerSpot> items) async {
    final qrService = read(qrCodeServiceProvider);
    final folder = await pickFolder();
    if (folder == null) return null;
    for (final item in items) {
      final svg = qrService.convertToSvg(item.id.toString(), item.identifier);
      qrService.saveSvgToFile(svg, join(folder, "${item.identifier}.svg"));
    }
    return folder;
  }

  Future<String?> pickFolder() async {
    String? path = await FilePicker.platform.getDirectoryPath(
      dialogTitle: "اختر مجلد لحفظ الصور فيه "
    );
    return path;
  }
}
