// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/utilities/double_scrollview.dart';

class CustomKeyboard extends StatefulWidget {
  const CustomKeyboard({super.key, this.padding = 0.0});

  final double padding;

  double get minWidth => AppDimensions.minWidth * 0.99;
  double get minHeight => AppDimensions.minHeight * 0.55;
  double get maxWidth => AppDimensions.maxWidth * 0.99;
  double get maxHeight => AppDimensions.maxHeight * 0.55;

  @override
  State<CustomKeyboard> createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  @override
  Widget build(BuildContext context) {
    return DoubleScrollview(
      minWidth: widget.minWidth,
      minHeight: widget.minHeight,
      maxWidth: widget.maxWidth,
      maxHeight: widget.maxHeight,
      padding: widget.padding,
      body: const Placeholder(),
    );
  }
}
