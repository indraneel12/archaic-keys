// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'about_app_button.dart';
import 'app_title.dart';
import 'keyboard_language_picker.dart';
import 'keyboard_layout_picker.dart';
import 'nwp_model_picker.dart';
import 'settings_button.dart';
import 'transliterate_button.dart';
import 'voice_typing_button.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.inversePrimary,
      child: const Row(
        children: <Widget>[
          AppTitle(),
          KeyboardLanguagePicker(),
          KeyboardLayoutPicker(),
          NwpModelPicker(),
          VoiceTypingButton(),
          TransliterateButton(),
          SettingsButton(),
          AboutAppButton()
        ],
      ),
    );
  }
}
