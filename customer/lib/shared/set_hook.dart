import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

 _SetHookState<T> useSetHook<T>() {
 return  use( _SetHook<T>());
}

class _SetHook<T> extends Hook<_SetHookState<T>> {
  const _SetHook();

  @override
  _SetHookState<T> createState() => _SetHookState<T>();
}

class _SetHookState<T> extends HookState<_SetHookState<T>, _SetHook<T>> {
  late Set<T> set;

  @override
  void initHook() {
    super.initHook();
    set = {};
  }

  add(T val) {
    setState(() {
      set.add(val);
    });
  }

  remove(T val) {
    setState(() {
      set.remove(val);
    });
  }

  bool contains(T val) => set.contains(val);

  @override
  _SetHookState<T> build(BuildContext context) => this;
}
