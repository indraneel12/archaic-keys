// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/utilities/double_scrollview.dart';
import 'package:app/src/widgets/key_button.dart';

class KeyboardControlBar extends StatelessWidget {
  static const minWidth = AppDimensions.minWidth * 0.80;
  static const minHeight = AppDimensions.minHeight * 0.05;
  static const maxWidth = AppDimensions.maxWidth * 1.00;
  static const maxHeight = AppDimensions.maxHeight * 1.00;

  const KeyboardControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DoubleScrollview(
      minWidth: KeyboardControlBar.minWidth,
      minHeight: KeyboardControlBar.minHeight,
      maxWidth: KeyboardControlBar.maxWidth,
      maxHeight: KeyboardControlBar.maxHeight,
      body: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: KeyButton(
                label: 'Space',
                fontFamily: CustomFonts.chivoMono,
                onPressed: () => {},
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: KeyButton(
                label: 'Ctrl',
                fontFamily: CustomFonts.chivoMono,
                isToggle: true,
                activeColor: Colors.blue,
                onPressed: () => {},
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: KeyButton(
                label: 'Shift',
                fontFamily: CustomFonts.chivoMono,
                isToggle: true,
                activeColor: Colors.blue,
                onPressed: () => {},
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: KeyButton(
                label: 'Alt',
                fontFamily: CustomFonts.chivoMono,
                isToggle: true,
                activeColor: Colors.blue,
                onPressed: () => {},
              ),
            ),
          ),
          const Expanded(
            flex: 8,
            child: Center(),
          ),
        ],
      ),
    );
  }
}
