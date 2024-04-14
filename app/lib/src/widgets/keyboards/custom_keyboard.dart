// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';
import 'package:app/src/models/keyboard_model.dart';
import 'package:app/src/utilities/double_scrollview.dart';

import 'utilities/key_button.dart';
import 'utilities/keyboard_control_bar.dart';
import 'utilities/rgb_border_animator.dart';

import 'malayalam/malayalam_keyboard.dart';

class CustomKeyboard extends StatelessWidget {
  const CustomKeyboard({super.key});

  static const minWidth = AppDimensions.maxWidth * 0.80;
  static const minHeight = AppDimensions.maxHeight * 0.40;
  static const maxWidth = AppDimensions.maxWidth * 1.00;
  static const maxHeight = AppDimensions.maxHeight * 1.00;

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
          child: DoubleScrollview(
            minWidth: CustomKeyboard.minWidth,
            minHeight: CustomKeyboard.minHeight,
            maxWidth: CustomKeyboard.maxWidth,
            maxHeight: CustomKeyboard.maxHeight,
            body: Consumer<KeyboardModel>(
              builder: (context, model, child) {
                if (model.currentKeyboardId.isMalayalam) {
                  return const MalayalamKeyboard();
                }
                // TODO: add Nepali Keyboard
                return unimplementedKeyboard(context);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget unimplementedKeyboard(BuildContext context) {
    return Placeholder(
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
              const SizedBox(
                width: 64.0,
                height: 64.0,
                child: MalayalamKey(
                  value: 'അ',
                  devanagariLabel: 'अ',
                  iso15919Label: 'a',
                ),
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
    );
  }
}
