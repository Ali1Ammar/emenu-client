import 'package:riverpod/riverpod.dart';

class RiverLogger implements ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    print("didAddProvider $provider $value");
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    print("didDisposeProvider $provider");
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    print(
        "didUpdateProvider $provider previousValue $previousValue, newValue $newValue ");
  }

  @override
  void providerDidFail(ProviderBase provider, Object error,
      StackTrace stackTrace, ProviderContainer container) {
    print("providerDidFail $provider $error");
  }
}
