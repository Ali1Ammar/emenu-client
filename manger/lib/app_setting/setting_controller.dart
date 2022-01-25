import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manger/app_setting/setting_value.dart';
import 'package:manger/main/shared_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final settingProvider = StateNotifierProvider<SettingController, SettingValue>(
    (_) => SettingController(_.read(sharedPrefProvider))..init());

class SettingController extends StateNotifier<SettingValue> {
  final SharedPreferences inst;
  static const _key = "appsetting";
  SettingController(this.inst)
      : super(const SettingValue(mode: ThemeMode.dark));

  void init() {
    final val = inst.getString(_key);
    if (val == null) {
      state = state.copyWith(isFirstOpen: true);
      inst.setString(_key, jsonEncode(state.copyWith(isFirstOpen: false)));
    }
    if (val != null) {
      state = SettingValue.fromJson(jsonDecode(val) as Map<String, dynamic>);
    }
  }

  Future<void> _setTo(SettingValue value) async {
    state = value;
    await inst.setString(_key, jsonEncode(value.toJson()));
  }

  void setModeTo(bool toDark) {
    final newState = toDark ? ThemeMode.dark : ThemeMode.light;
    _setTo(state.copyWith(mode: newState));
  }

  // /// this make a probleam if used with DayNightSwitcher onStateChanged directly
  Future<void> toggle() async {
    final newState = _toggle(state.mode);
    _setTo(state.copyWith(mode: newState));
  }

  ThemeMode _toggle(ThemeMode i) =>
      i == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
}

extension ThemeModeEx on ThemeMode {
  bool get isDark => this == ThemeMode.dark;
}
