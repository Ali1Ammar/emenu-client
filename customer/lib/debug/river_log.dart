import 'package:riverpod/riverpod.dart';
import 'package:shared/shared.dart';

class RiverLogger implements ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    log("didAddProvider $provider $value");
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    log("didDisposeProvider $provider");
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    log("didUpdateProvider $provider previousValue $previousValue, newValue $newValue ");
  }

  @override
  void providerDidFail(ProviderBase provider, Object error,
      StackTrace stackTrace, ProviderContainer container) {
    debugLog("providerDidFail $provider $error",stackTrace);
  }
}
