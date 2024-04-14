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

class MalayalamKey extends StatelessWidget {
  static final iconMalayalamOriginal = Icon(
    IconData(
      'അ'.codeUnitAt(0),
      fontFamily: CustomFonts.notoSansMalayalam,
    ),
  );
  static final iconMalayalamDevanagari = Icon(
    IconData(
      'अ'.codeUnitAt(0),
      fontFamily: CustomFonts.notoSansDevanagari,
    ),
  );
  static final iconMalayalamISO15919 = Icon(
    IconData('a'.codeUnitAt(0)),
  );

  const MalayalamKey({
    super.key,
    required this.value,
    this.originalLabel,
    this.devanagariLabel,
    this.iso15919Label,
    this.onPressed,
  });

  final String value;
  final String? originalLabel;
  final String? devanagariLabel;
  final String? iso15919Label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<KeyboardModel>(
      builder: (context, model, child) {
        String? fontFamily = CustomFonts.notoSansMalayalam;
        String label = originalLabel ?? value;
        if (model.currentKeyboardId == CustomKeyboardId.malayalamDevanagari) {
          fontFamily = CustomFonts.notoSansDevanagari;
          label = devanagariLabel ?? value;
        }
        if (model.currentKeyboardId == CustomKeyboardId.malayalamISO15919) {
          fontFamily = null;
          label = iso15919Label ?? value;
        }
        final keyButton = KeyButton(
          label: label,
          fontFamily: fontFamily,
          minWidth: double.infinity,
          minHeight: double.infinity,
          onPressed: onPressed ??
              () => Provider.of<TextModel>(context, listen: false)
                  .insertText(value),
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
