// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app_sticker.dart';
import 'keyboard_language_picker.dart';
import 'keyboard_layout_picker.dart';
import 'nwp_model_picker.dart';
import 'settings_button.dart';
import 'transliterate_button.dart';
import 'voice_typing_button.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  static const controls = [
    KeyboardLanguagePicker(),
    KeyboardLayoutPicker(),
    VoiceTypingButton(),
    NwpModelPicker(),
    TransliterateButton(),
    SettingsButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(constraints.maxHeight * 0.20),
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: AppSticker(),
              ),
            ),
            const Spacer(),
            for (final widget in controls)
              FittedBox(
                fit: BoxFit.scaleDown,
                child: widget,
              ),
          ],
        );
      },
    );
  }
}
