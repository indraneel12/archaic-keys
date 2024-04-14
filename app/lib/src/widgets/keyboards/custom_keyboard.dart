// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';
import 'package:app/src/utilities/double_scrollview.dart';

import 'utilities/key_button.dart';
import 'utilities/keyboard_control_bar.dart';
import 'utilities/rgb_border_animator.dart';

import 'malayalam/malayalam_keyboard.dart';

class CustomKeyboard extends StatefulWidget {
  const CustomKeyboard({super.key});

  static const minWidth = AppDimensions.minWidth * 0.90;
  static const minHeight = AppDimensions.minHeight * 0.50;
  static const maxWidth = AppDimensions.maxWidth * 1.00;
  static const maxHeight = AppDimensions.maxHeight * 1.00;

  Widget renderBody(BuildContext context) {
    return DoubleScrollview(
      minWidth: CustomKeyboard.minWidth,
      minHeight: CustomKeyboard.minHeight,
      maxWidth: CustomKeyboard.maxWidth,
      maxHeight: CustomKeyboard.maxHeight,
      body: Placeholder(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
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
                RgbBorderAnimator(
                  child: KeyButton(
                    label: 'Ctrl',
                    isToggle: true,
                    activeColor: Colors.blue,
                    onPressed: () => {},
                  ),
                ),
                const MalayalamKey(
                  value: 'അ',
                  devanagariLabel: 'अ',
                  iso15919Label: 'a',
                ),
                KeyButton(
                  label: '𑐀',
                  fontFamily: CustomFonts.notoSansNewa,
                  onPressed: () => {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CustomKeyboard> createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: KeyboardControlBar(),
          ),
        ),
        const SizedBox(height: 8.0),
        Expanded(
          flex: 11,
          child: widget.renderBody(context),
        ),
      ],
    );
  }
}
