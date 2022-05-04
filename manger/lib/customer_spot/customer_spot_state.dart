import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'customer_spot_state.freezed.dart';

@freezed
class CustomerSpotState with _$CustomerSpotState {
  const factory CustomerSpotState.init([String? error]) = InitCustomerSpotState;

  const factory CustomerSpotState.loaded(
      List<CustomerSpotWithQa> data,
      RealtionResturant resturant,
      bool isLoading,
      String? savingDirection) = LoadedCustomerSpotState;
}

class CustomerSpotWithQa {
  final CustomerSpot spot;
  final String qrCode;

  CustomerSpotWithQa(this.spot, this.qrCode);
}
