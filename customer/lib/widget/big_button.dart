import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const BigButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: OutlinedButton(
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.maxFinite,
              child: Center(child: child),
            ),
          )),
    );
  }
}
