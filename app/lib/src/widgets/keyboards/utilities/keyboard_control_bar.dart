// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/models/models.dart';

import 'key_button.dart';
import 'transliteration_predictions_view.dart';
import 'unicode_text_field.dart';

class KeyboardControlBar extends StatelessWidget {
  static const minHeight = 16.0;
  static const maxHeight = double.infinity;

  static final transliterationIcon = Icon(IconData('⚞'.codeUnitAt(0)));
  static final scriptIcon = Icon(IconData('⤋'.codeUnitAt(0)));

  const KeyboardControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<TransliterationModel>(
          builder: (context, model, child) {
            return SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.08,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: KeyButton(
                  tooltip: 'Toggle Transliteration',
                  label: '    ⚞    ',
                  isToggle: true,
                  isActive: model.isTransliterationOn,
                  activeColor: Colors.blue,
                  onPressed: () => model.toggleTransliteration(),
                ),
              ),
            );
          },
        ),
        const Expanded(
          child: TransliterationPredictionsView(
            alignment: Alignment.center,
          ),
        ),
        Consumer<KeyboardModel>(
          builder: (context, model, child) {
            return SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.08,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: KeyButton(
                  tooltip: 'Toggle Script Mode',
                  label: '    ⤋    ',
                  isToggle: true,
                  isActive: model.isTypeInCurrentScript,
                  activeColor: Colors.blue,
                  onPressed: () => model.toggleTypeInCurrentScript(),
                ),
              ),
            );
          },
        ),
        Consumer<UnicodeTextFieldModel>(
          builder: (context, model, child) {
            if (model.isUnicodeTextFieldVisible) {
              return Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SizedBox(
                  width: 128.0,
                  child: UnicodeTextField(),
                ),
              );
            }
            return const Center();
          },
        ),
      ],
    );
  }
}
