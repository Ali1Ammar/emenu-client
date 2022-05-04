import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:manger/customer_spot/customer_spot_state.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/shared/qr_code.dart';
import 'package:path/path.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final customerSpotControllerProvider = StateNotifierProvider.autoDispose<
    CustomerSpotController, CustomerSpotState>((_) {
  final resturantNotifier = _.watch(currentLinkedResturant.notifier);
  return CustomerSpotController(
      resturantNotifier, _.watch(qrCodeServiceProvider));
});

class CustomerSpotController extends StateNotifier<CustomerSpotState> {
  final QrCodeService qrCodeService;
  final StateController<AsyncValue<RealtionResturant>> resturantNotifier;
  VoidCallback? disposeCallback;
  CustomerSpotController(this.resturantNotifier, this.qrCodeService)
      : super(const CustomerSpotState.init()) {
    listenToResturant(resturantNotifier.state);
    disposeCallback = resturantNotifier.addListener(listenToResturant);
  }

  LoadedCustomerSpotState get loaded => state.mapOrNull(loaded: (_) => _)!;

  @override
  void dispose() {
    disposeCallback?.call();
    super.dispose();
  }

  void listenToResturant(AsyncValue<RealtionResturant> _) {
    _.mapOrNull(error: (_) {
      state = CustomerSpotState.init(_.toString());
    }, data: (data) {
      String generateQrForSpot(CustomerSpot spot) {
        return qrCodeService.generateFullLinkToOrder(data.value.id.toString(),
            spot.orderTypeId.toString(), spot.id.toString());
      }

      final items = data.value.customerSpot
          .map((spot) => CustomerSpotWithQa(spot, generateQrForSpot(spot)))
          .toList();
      state = CustomerSpotState.loaded(items, data.value, false, null);
    });
  }

  saveItem(CustomerSpotWithQa item) {
    handleLoading(() => _saveAllItems([item]));
  }

  handleLoading(Future<String?> Function() call) async {
    state = loaded.copyWith(isLoading: true);
    final data = await call();
    state = loaded.copyWith(isLoading: false, savingDirection: data);
  }

  void saveAllItems() async {
    handleLoading(() => _saveAllItems(loaded.data));
  }

  Future<String?> _saveAllItems(List<CustomerSpotWithQa> items) async {
    final qrService = qrCodeService;
    final folder = await pickFolder();
    if (folder == null) return null;
    for (final item in items) {
      final svg = qrService.convertToSvg(item.qrCode, item.spot.identifier);
      qrService.saveSvgToFile(svg, join(folder, "${item.spot.identifier}.svg"));
    }
    return folder;
  }

  Future<String?> pickFolder() async {
    String? path = await FilePicker.platform
        .getDirectoryPath(dialogTitle: "اختر مجلد لحفظ الصور فيه ");
    return path;
  }
}
