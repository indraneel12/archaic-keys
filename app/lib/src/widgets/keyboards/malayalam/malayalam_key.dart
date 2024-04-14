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
    required this.devanagariLabel,
    required this.iso15919Label,
    this.originalLabel,
    this.onPressed,
  });

  final String value;
  final String? originalLabel;
  final String devanagariLabel;
  final String iso15919Label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<KeyboardModel>(
      builder: (context, model, child) {
        String? fontFamily;
        var label = iso15919Label;
        if (model.currentKeyboardId == CustomKeyboardId.malayalamOriginal) {
          fontFamily = CustomFonts.notoSansMalayalam;
          label = originalLabel ?? value;
        }
        if (model.currentKeyboardId == CustomKeyboardId.malayalamDevanagari) {
          fontFamily = CustomFonts.notoSansDevanagari;
          label = devanagariLabel;
        }
        final keyButton = KeyButton(
          label: label,
          fontFamily: fontFamily,
          onPressed: onPressed ??
              () => Provider.of<TextModel>(context, listen: false)
                  .insertText(value),
        );
        return model.isKeyboardLightOn
            ? RgbBorderAnimator(child: keyButton)
            : keyButton;
      },
    );
  }
}