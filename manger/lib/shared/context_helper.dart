import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension OnContext on BuildContext {
  ProviderContainer get riverpod=>ProviderScope.containerOf(this) ;
}