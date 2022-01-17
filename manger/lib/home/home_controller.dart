import 'package:manger/home/home_state.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/login/user.dart';
import 'package:manger/main/auto_router.dart';
import 'package:manger/new_rest/new_rest_page.dart';
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
    Resturant? resturant;
    if (user.resturantId != null) {
      resturant = await resturantService.getLinkedResturant();
    }
    if (user.isSystemAdmin) {
      final rests = await resturantService.getAllResturantForAdmins();
      final _state =
          HomeState.loadedSystemAdmin(rests, resturant) as LoadedAllResturant;
      state = _state;
      if (rests.isEmpty) {
        return read(autoRouteProvider).replace(const NewResturantPageRoute());
      }
      if (rests.length == 1 && rests.first.id == resturant?.id) {
        //admin has only one resturant linked wiht him
        return read(autoRouteProvider)
            .replace(const HomeResturantMangePageRoute());
      }
      return read(autoRouteProvider).replace(HomeSystemPageRoute(data: _state));
    } else {
      if (resturant == null) {
        state = const HomeState.emptyUser();
      } else {
        state = HomeState.loadedUserResturant(resturant);
        return read(autoRouteProvider)
            .replace(const HomeResturantMangePageRoute());
      }
    }
  }
}
