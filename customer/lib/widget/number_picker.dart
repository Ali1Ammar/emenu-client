import 'package:flutter/material.dart';

class ButtonNumbetPicker extends StatefulWidget {
  final num minValue;
  final num maxValue;
  final num initialValue;
  final ValueChanged<num> onChanged;
  final Color? mainColor;
  final Icon addIcon;
  final Icon removeIcon;
  final TextStyle? styleText;
  final Color? iconColor;
  final EdgeInsetsGeometry textPadding;
  final double raduis;
  final num step;
  final double iconSize;
  final int minDigit;
  // final TextDirection textDirection;

  final bool loop;
  const ButtonNumbetPicker({
    Key? key,
    this.mainColor,
    this.addIcon = const Icon(Icons.add),
    this.removeIcon = const Icon(Icons.remove),
    this.styleText,
    this.iconColor,
    this.textPadding = const EdgeInsets.symmetric(horizontal: 16),
    this.raduis = 10,
    required this.minValue,
    required this.maxValue,
    required this.initialValue,
    required this.onChanged,
    this.step = 1,
    this.loop = true,
    this.iconSize = 24,
    required this.minDigit,
  })  : assert(initialValue >= minValue && initialValue <= maxValue),
        assert(minValue < maxValue),
        super(key: key);
  @override
  _ButtonNumbetPickerState createState() => _ButtonNumbetPickerState();
}

class _ButtonNumbetPickerState extends State<ButtonNumbetPicker> {
  late num _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  /// Calculate next value for the ButtonPicker
  void count(CountDirection countDirection) {
    if (countDirection == CountDirection.up) {
      /// Make sure you can't go over `maxValue` unless `loop == true`
      if (_counter + widget.step > widget.maxValue) {
        if (widget.loop) {
          setState(() {
            /// Calculate the correct value if you go over maxValue in a loop
            // final double diff = (_counter + widget.step) - widget.maxValue;
            _counter = widget
                .minValue; // diff >= 1 ? widget.minValue + diff - 1 : widget.minValue;
          });
        }
      } else {
        setState(() => _counter += widget.step);
      }
    } else {
      /// Make sure you can't go under `minValue` unless `loop == true`
      if (_counter - widget.step < widget.minValue) {
        if (widget.loop) {
          setState(() {
            /// Calculate the correct value if you go under minValue in a loop
            // final double diff = widget.minValue - (_counter - widget.step);
            _counter = widget
                .maxValue; // diff >= 1 ? widget.maxValue - diff + 1 : widget.maxValue;
          });
        }
      } else {
        setState(() => _counter -= widget.step );
      }
    }

    widget.onChanged(_counter);
  }

  Widget getCount() {
    final str = widget.initialValue % 1 == 0 && widget.step % 1 == 0
        ? _counter.toStringAsFixed(0)
        : _counter.toStringAsFixed(1);
    final maxLength = widget.minDigit;
    final extraDigit = List.generate(maxLength - str.length, (index) => " ");
    extraDigit.insert(extraDigit.length ~/ 2, str);
    return Text(extraDigit.join(),
        style: widget.styleText ?? Theme.of(context).textTheme.headline6);
  }

  @override
  Widget build(BuildContext context) {
    final mainColor = widget.mainColor ?? Theme.of(context).primaryColor;
    final iconColor = widget.iconColor ?? Theme.of(context).iconTheme.color;
    final borderRadius2 = BorderRadius.horizontal(
        left: Radius.circular(widget.raduis),
        right: Radius.circular(widget.raduis));
    Widget buildIcon(Icon icon, CountDirection dir) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius2,
          color: mainColor,
        ),
        child: IconButton(
            color: iconColor,
            padding: const EdgeInsets.all(2.0),
            iconSize: widget.iconSize,
            icon: icon,
            // constraints: BoxConstraints(
            //     maxWidth: widget.iconSize * 2, maxHeight: widget.iconSize * 2),
            onPressed: () {
              count(dir);
            }),
      );
    }

    return Container(
      height: 35,
      decoration: BoxDecoration(
          borderRadius: borderRadius2, border: Border.all(color: mainColor)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildIcon(widget.removeIcon, CountDirection.down),
          Padding(
            padding: widget.textPadding,
            child: getCount(),
          ),
          buildIcon(widget.addIcon, CountDirection.up)
        ],
      ),
    );
  }
}

enum CountDirection { up, down }
