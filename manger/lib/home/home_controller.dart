import 'package:manger/home/home_state.dart';
import 'package:manger/home/resturant/resturant_home_controller.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/login/user.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/shared/dialog.dart';
import 'package:manger/shared/service/resturnat_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

final homeControllerProvider =
    StateNotifierProvider.autoDispose<HomeController, HomeState>((ref) =>
        HomeController(ref.read, ref.watch(loginProvider)!.user,
            ref.watch(resturantServiceProvider))
          ..init());

class HomeController extends StateNotifier<HomeState> {
  final User user;
  final ResturantService resturantService;
  final Reader read;
  HomeController(this.read, this.user, this.resturantService)
      : super(const HomeState.loading());

  init() async {
    try {
      if (user.isSystemAdmin) {
        final rests = await resturantService.getAllResturantForAdmins();
        final _state = HomeState.loadedSystemAdmin(rests) as LoadedAllResturant;
        state = _state;

        if (rests.isEmpty) {
          return read(autoRouteProvider).replace(const NewResturantPageRoute());
        }

        if (rests.length == 1 && rests.first.id == user.resturantId) {
          //admin has only one resturant linked wiht
          goToLinkedRest();
        }
        if (user.resturantId != null) {
          return;
        }

        return read(autoRouteProvider)
            .replace(HomeSystemPageRoute(resturants: _state.resturnats));
      } else {
        if (user.resturantId == null) {
          state = const HomeState.emptyUser();
          return;
        }
        goToLinkedRest();
      }
    } catch (e, s) {
      debugLog(e, s);
      showErrorDialogViaRead(e, read);
    }
  }

  goToLinkedRest() async {
    final resturant = await resturantService.getLinkedResturant();
    read(currentLinkedResturant.notifier).state = AsyncValue.data(resturant);

    state = HomeState.loadedUserResturant(resturant);
    return read(autoRouteProvider).replace(const HomeResturantMangePageRoute());
  }
}
