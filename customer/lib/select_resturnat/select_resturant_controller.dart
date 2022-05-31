import 'package:customer/entity/order_select_data.dart';
import 'package:customer/main/auto_router.dart';
import 'package:customer/select_resturnat/select_resturant_state.dart';
import 'package:customer/service/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:fuzzy/fuzzy.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final selectRestController =
    StateNotifierProvider<SelectResturantController, SelectResturantState>(
        (_) => SelectResturantController(_.read));

class SelectResturantController extends StateNotifier<SelectResturantState> {
  final Reader read;
  SelectResturantController(this.read)
      : super(const SelectResturantState.waitCustomerSelect());
  SelectResturantState? loadedHistory;

  reinit() {
    state = const SelectResturantState.waitCustomerSelect();
  }

  loadResturants() async {
    try {
      final rest = await read(dioService).getResturants();
      state = SelectResturantState.loadResturants(rest, null, []);

      if (rest.length == 1) {
        selectResturnat(rest.first);
      }
    } catch (e) {
      handleError(e);
    }
  }

  void handleError(Object e) {
    if (e is DioError) {
      state = const SelectResturantState.error(
          "مشكلة في الاتصال في الشبكة الرجاء التاكد من الاتصال\n, الرجاء التاكد من تشغيل السيرفر وضبط الip من علامة التعديل في زاويه اعلاه");
    } else {
      state = SelectResturantState.error(e.toString());
    }
  }

  toggleSearch() {
    final loaded = (state as LoadResturants);
    if (loaded.fuzzySearch == null) {
      state = loaded.copyWith(
          resturnatSearch: loaded.resturnats,
          fuzzySearch: Fuzzy(loaded.resturnats,
              options: FuzzyOptions(keys: [
                WeightedKey(name: "name", getter: (r) => r.name, weight: 1)
              ])));
    } else {
      state = loaded.copyWith(fuzzySearch: null);
    }
  }

  search(String text) {
    final loaded = (state as LoadResturants);
    state = loaded.copyWith(
        resturnatSearch:
            loaded.fuzzySearch!.search(text).map((e) => e.item).toList());
  }

  selectResturnat(Resturant item) async {
    loadedHistory = state;
    state = SelectResturantState.loadingOrderType(item);
    final restRealtion = await read(dioService).getResutrnatRelation(item.id);
    state = SelectResturantState.loadSelectedResturant(restRealtion);
    if (restRealtion.orderType.length == 1) {
      read(autoRouteProvider).push(SelectOrderPageRoute(
          param: OrderSelectData(
              restRealtion, restRealtion.orderType.first, null)));
    }
  }

  selectOrderType(OrderType orderType) async {
    state.whenOrNull(loadSelectedResturant: (rest) {
      read(autoRouteProvider).push(
          SelectOrderPageRoute(param: OrderSelectData(rest, orderType, null)));
    });
  }

  Future<bool> tryPop() async {
    if (loadedHistory != null) {
      state = loadedHistory!;
      loadedHistory = null;
    } else {
      state = const SelectResturantState.waitCustomerSelect();
    }
    return false;
  }

  void loadDataViaCustomerSpotId(int id) async {
    try {
      final data = await read(dioService).getDataViaSpotId(id);
      read(autoRouteProvider).push(SelectOrderPageRoute(param: data));
    } catch (e) {
      handleError(e);
    }
  }

  void readQrCode(String qrCode) {
    try {
      final url = Uri.parse(qrCode);
      final data = QrCodeData.fromUri(url).spotId;

      loadDataViaCustomerSpotId(data);
    } catch (e) {
      state = const SelectResturantState.error(
          "خطا في الQRCODE الرجاء استخدام كود صحيح");
    }
  }
}
