// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RatingStars extends HookWidget {
  RatingStars({
    Key? key,
    required this.rating,
    this.iconSize = 30,
    required this.editable,
    this.color = Colors.amber,
  }) : super(key: key);

  final double iconSize;
  final Color color;
  final bool editable;
  final ValueNotifier<double> rating;

  @override
  Widget build(BuildContext context) {
    useValueListenable(rating);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: editable
                ? () {
              rating.value = 1;
            }
                : () {},
            child: rating.value > 0 && rating.value < 1
                ? Icon(
              Icons.star_half_rounded,
              size: iconSize,
              color: color,
            )
                : Icon(
              Icons.star_rate_rounded,
              size: iconSize,
              color: rating.value >= 1 && rating.value <= 5
                  ? color
                  : const Color(0xffC4C4C4),
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
              rating.value = 2;
            }
                : () {},
            child: rating.value <= 1 || rating.value >= 2
                ? Icon(
              Icons.star_rate_rounded,
              size: iconSize,
              color: (rating.value > 1 || rating.value >= 2) &&
                  rating.value <= 5
                  ? color
                  : const Color(0xffC4C4C4),
            )
                : rating.value > 1 && rating.value < 2
                ? Icon(
              Icons.star_half_rounded,
              size: iconSize,
              color: color,
            )
                : const SizedBox(
              height: 0,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
              rating.value = 3;
            }
                : () {},
            child: rating.value <= 2 || rating.value >= 3
                ? Icon(
              Icons.star_rate_rounded,
              size: iconSize,
              color: (rating.value > 2 || rating.value >= 3) &&
                  rating.value <= 5
                  ? color
                  :const Color(0xffC4C4C4),
            )
                : rating.value > 2 && rating.value < 3
                ? Icon(
              Icons.star_half_rounded,
              size: iconSize,
              color: color,
            )
                : const SizedBox(
              height: 0,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
              rating.value = 4;
            }
                : () {},
            child: rating.value <= 3 || rating.value >= 4
                ? Icon(
              Icons.star_rate_rounded,
              size: iconSize,
              color: (rating.value > 3 || rating.value >= 4) &&
                  rating.value <= 5
                  ? color
                  :const Color(0xffC4C4C4),
            )
                : rating.value > 3 && rating.value < 4
                ? Icon(
              Icons.star_half_rounded,
              size: iconSize,
              color: color,
            )
                : const SizedBox(
              height: 0,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
              rating.value = 5;
            }
                : () {},
            child: rating.value <= 4 || rating.value >= 5
                ? Icon(
              Icons.star_rate_rounded,
              size: iconSize,
              color: rating.value > 4 && rating.value <= 5
                  ? color
                  :const Color(0xffC4C4C4),
            )
                : rating.value > 4 && rating.value < 5
                ? Icon(
              Icons.star_half_rounded,
              size: iconSize,
              color: color,
            )
                : const SizedBox(
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
