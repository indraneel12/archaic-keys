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

  const KeyboardControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 16.0),
          child: KeyButton(
            label: 'Toggle Transliteration',
            thumbnail: const Icon(Icons.translate),
            isToggle: true,
            activeColor: Colors.blue,
            onPressed: () =>
                Provider.of<TransliterationModel>(context, listen: false)
                    .toggleTransliteration(),
          ),
        ),
        const Expanded(
          child: TransliterationPredictionsView(
            alignment: Alignment.center,
          ),
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
