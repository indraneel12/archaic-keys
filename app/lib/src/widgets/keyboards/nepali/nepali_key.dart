// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';
import 'package:app/src/models/models.dart';
import 'package:app/src/widgets/keyboards/utilities/key_button.dart';
import 'package:app/src/widgets/keyboards/utilities/rgb_border_animator.dart';

class NepaliKey extends StatelessWidget {
  static final iconNepaliOriginal = Icon(
    IconData(
      '𑐀'.codeUnitAt(0),
      fontFamily: CustomFonts.notoSansNewa,
    ),
  );
  static final iconNepaliDevanagari = Icon(
    IconData(
      'अ'.codeUnitAt(0),
      fontFamily: CustomFonts.notoSansDevanagari,
    ),
  );
  static final iconNepaliRoman = Icon(
    IconData('a'.codeUnitAt(0)),
  );

  const NepaliKey({
    super.key,
    required this.value,
    this.originalLabel,
    this.devanagariLabel,
    this.romanLabel,
    this.onPressed,
  });

  final String value;
  final String? originalLabel;
  final String? devanagariLabel;
  final String? romanLabel;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<KeyboardModel>(
      builder: (context, model, child) {
        var ch = value;
        String? fontFamily = CustomFonts.notoSansNewa;
        String label = originalLabel ?? value;
        if (model.currentKeyboardId == CustomKeyboardId.nepaliDevanagari) {
          fontFamily = CustomFonts.notoSansDevanagari;
          label = devanagariLabel ?? value;
        }
        if (model.currentKeyboardId == CustomKeyboardId.nepaliRoman) {
          fontFamily = null;
          label = romanLabel ?? value;
        }
        if (model.isTypeInCurrentScript) {
          if (model.currentKeyboardId == CustomKeyboardId.nepaliDevanagari) {
            ch = devanagariLabel ?? value;
          } else if (model.currentKeyboardId == CustomKeyboardId.nepaliRoman) {
            ch = romanLabel ?? value;
          }
        }
        final keyButton = KeyButton(
          label: label,
          fontFamily: fontFamily,
          minWidth: double.infinity,
          minHeight: double.infinity,
          onPressed: onPressed ??
              () => Provider.of<TextModel>(context, listen: false).insertText(
                    ch,
                  ),
        );
        return model.isKeyboardLightOn
            ? RgbBorderAnimator(child: keyButton)
            : Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                  color: Theme.of(context)
                      .colorScheme
                      .secondaryContainer
                      .withAlpha(128),
                ),
                child: keyButton,
              );
      },
    );
  }
}
