// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/utilities/double_scrollview.dart';
import 'package:app/src/widgets/key_button.dart';

class KeyboardControlBar extends StatelessWidget {
  static const minWidth = AppDimensions.maxWidth * 0.60;
  static const minHeight = AppDimensions.minHeight * 0.03;
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
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: KeyButton(
                label: 'Ctrl ',
                fontFamily: CustomFonts.chivoMono,
                isToggle: true,
                activeColor: Colors.blue,
                onPressed: () => {}, // TODO: Ctrl action (Key)
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: KeyButton(
                label: 'Shift',
                fontFamily: CustomFonts.chivoMono,
                isToggle: true,
                activeColor: Colors.blue,
                onPressed: () => {}, // TODO: Shift action (Key)
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: KeyButton(
                label: ' Alt ',
                fontFamily: CustomFonts.chivoMono,
                isToggle: true,
                activeColor: Colors.blue,
                onPressed: () => {}, // TODO: Alt action (Key)
              ),
            ),
          ),
          const Expanded(
            flex: 10,
            child: Center(),
          ),
        ],
      ),
    );
  }
}
