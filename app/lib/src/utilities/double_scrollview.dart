// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:math';

import 'package:flutter/material.dart';

class DoubleScrollview extends StatelessWidget {
  DoubleScrollview({
    super.key,
    required this.minWidth,
    required this.minHeight,
    required this.maxWidth,
    required this.maxHeight,
    required this.padding,
    required this.body,
    this.decoration,
  });

  final double minWidth;
  final double minHeight;
  final double maxWidth;
  final double maxHeight;
  final double padding;
  final Widget body;
  final Decoration? decoration;

  final _verticalScrollController = ScrollController();
  final _horizontalScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.sizeOf(context).width;
    final currentHeight = MediaQuery.sizeOf(context).height;
    final layoutWidth = max(minWidth, min(currentWidth, maxWidth));
    final layoutHeight = max(minHeight, min(currentHeight, maxHeight));
    final horizontalLayoutPadding =
        ((currentWidth - layoutWidth) >= padding * 2.0)
            ? 0.0
            : padding - max(0, ((currentWidth - layoutWidth) / 2.0));
    final verticalLayoutPadding =
        ((currentHeight - layoutHeight) >= padding * 2.0)
            ? 0.0
            : padding - max(0, ((currentHeight - layoutHeight) / 2.0));
    return SizedBox(
      width: maxWidth,
      height: maxHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: _verticalScrollController,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _horizontalScrollController,
          child: SizedBox(
            width: layoutWidth,
            height: layoutHeight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalLayoutPadding,
                vertical: verticalLayoutPadding,
              ),
              child: Container(
                decoration: decoration,
                child: body,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
