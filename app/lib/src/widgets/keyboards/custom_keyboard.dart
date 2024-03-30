// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/utilities/key_button.dart';
import 'package:app/src/utilities/double_scrollview.dart';

class CustomKeyboard extends StatefulWidget {
  const CustomKeyboard({super.key, this.padding = 0.0});

  final double padding;

  double get minWidth => AppDimensions.minWidth * 0.90;
  double get minHeight => AppDimensions.minHeight * 0.45;
  double get maxWidth => AppDimensions.maxWidth * 1.00;
  double get maxHeight => AppDimensions.maxHeight * 1.00;

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
      body: Placeholder(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '<unimplemented-keyboard>',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Global Width = ${MediaQuery.sizeOf(context).width}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Global Height = ${MediaQuery.sizeOf(context).height}',
              ),
            ),
            KeyButton(
              character: 'Ctrl',
              isToggle: true,
              onPressed: () => {},
            ),
            KeyButton(
              character: 'അ',
              fontFamily: MalayalamFonts.notoSerifMalayalam,
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
