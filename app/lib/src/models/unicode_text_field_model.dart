// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/models/text_model.dart';

class UnicodeTextFieldModel extends ChangeNotifier {
  var _isUnicodeTextFieldVisible = true;

  bool get isUnicodeTextFieldVisible => _isUnicodeTextFieldVisible;

  void toggleUnicodeTextFieldVisibility() {
    _isUnicodeTextFieldVisible = !_isUnicodeTextFieldVisible;
    notifyListeners();
  }

  void submitUnicode(BuildContext context, String text) {
    if (text.length >= 2) {
      final prefix = text.substring(0, 2).toUpperCase();
      if (prefix == r'U+' ||
          prefix == r'\U' ||
          prefix == r'%U' ||
          prefix == r'0X') {
        text = text.substring(2);
      }
    }
    try {
      Provider.of<TextModel>(context, listen: false)
          .insertText(String.fromCharCode(int.parse(text, radix: 16)));
    } catch (e) {
      // UX: Ignore invalid Unicode strings.
    }
    notifyListeners();
  }
}
