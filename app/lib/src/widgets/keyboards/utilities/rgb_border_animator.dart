// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:glowy_borders/glowy_borders.dart';

class RgbBorderAnimator extends StatelessWidget {
  const RgbBorderAnimator({
    super.key,
    required this.child,
    this.borderSize = 2.0,
  });

  final Widget child;
  final double borderSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
      borderSize: borderSize,
      glowSize: 0,
      gradientColors: const [
        Colors.red,
        Colors.green,
        Colors.blue,
      ],
      borderRadius: const BorderRadius.all(Radius.circular(2.0)),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(2.0)),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: child,
      ),
    );
  }
}
