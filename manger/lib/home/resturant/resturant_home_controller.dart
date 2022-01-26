import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/logger.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final currentLinkedResturant = StateProvider<AsyncValue<RealtionResturant>>(
    (_) => const AsyncValue.loading());

final resturnatHomeControllerProvider = Provider.autoDispose((
  ref,
) {
  return ResturnatHomtController(
    ref.watch(resturantServiceProvider),
    ref.read,
  );
});

class ResturnatHomtController {
  final Reader read;
  final ResturantService resturantService;
  AsyncValue<RealtionResturant> get state => read(currentLinkedResturant);
  set state(AsyncValue<RealtionResturant> s) =>
      read(currentLinkedResturant.notifier).state = s;

  ResturnatHomtController(this.resturantService, this.read) {
    if (state.isLoading) {
      initResturant();
    }
  }

  initResturant() async {
    try {
      if (state.value != null) {
        state = AsyncValue.data(state.value!, isRefreshing: true);
      } else {
        state = const AsyncValue.loading();
      }
      final rest = await resturantService.getLinkedResturant();
      state = AsyncValue.data(rest);
    } catch (e,s) {
      debugLog(e, s);
      state = AsyncValue.error(e,stackTrace: s);
      showErrorDialogViaRead(e, read);
    }
  }

  addToResturant(Future<void> Function() call) async {
    try {
      final future = call();
      showLoadingViaRead(future, read);
      await future;
    } catch (e) {
      showErrorDialogViaRead(e, read);
    }
    await initResturant();
  }
}
