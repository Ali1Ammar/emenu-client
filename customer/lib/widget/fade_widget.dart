import 'package:flutter/material.dart';

class FadeWidget extends StatelessWidget {
  final Widget child;
  final bool isFade;
  const FadeWidget({ Key? key,required this.child,required this.isFade }) : super(key: key);

  @override
  Widget build(BuildContext context) {
          final state =
          !isFade ? CrossFadeState.showSecond : CrossFadeState.showFirst;
        return    AnimatedCrossFade(
          firstChild: Container(height: 0.0),
          secondChild: child,
          firstCurve: const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
          secondCurve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
          sizeCurve: Curves.fastOutSlowIn,
          crossFadeState: state,
          duration: const Duration(milliseconds: 400),
        );
  }
}