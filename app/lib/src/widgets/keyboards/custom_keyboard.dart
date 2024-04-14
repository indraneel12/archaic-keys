// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';

import 'utilities/key_button.dart';
import 'utilities/keyboard_control_bar.dart';
import 'utilities/rgb_border_animator.dart';

class CustomKeyboard extends StatefulWidget {
  const CustomKeyboard({super.key});

  double get minWidth => AppDimensions.minWidth * 0.90;
  double get minHeight => AppDimensions.minHeight * 0.50;
  double get maxWidth => AppDimensions.maxWidth * 1.00;
  double get maxHeight => AppDimensions.maxHeight * 1.00;

  Widget renderBody(BuildContext context) {
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
              RgbBorderAnimator(
                child: KeyButton(
                  label: 'അ',
                  fontFamily: CustomFonts.notoSansMalayalam,
                  onPressed: () => {},
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
