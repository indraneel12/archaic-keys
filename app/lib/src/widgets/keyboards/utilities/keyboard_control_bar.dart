// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';

import 'key_button.dart';
import 'unicode_text_field.dart';

class KeyboardControlBar extends StatelessWidget {
  static const minHeight = 16.0;
  static const maxHeight = double.infinity;

  const KeyboardControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 25,
          child: Row(
            children: <Widget>[
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
            ],
          ),
        ),
        const Expanded(flex: 1, child: Center()),
        const Expanded(
          flex: 52,
          child: Placeholder(
            child: Center(
              child: Text('NWP Predictions'),
            ),
          ),
        ),
        const Expanded(flex: 2, child: Center()),
        Expanded(
          flex: 20,
          child: UnicodeTextField(),
        ),
      ],
    );
  }
}
