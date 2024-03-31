// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class UnicodeTextFieldModel extends ChangeNotifier {
  var _isUnicodeTextFieldVisible = true;
  int _submittedUnicode = -1;

  bool get isUnicodeTextFieldVisible => _isUnicodeTextFieldVisible;
  int get submittedUnicode => _submittedUnicode;

  void toggleUnicodeTextFieldVisibility() {
    _isUnicodeTextFieldVisible = !_isUnicodeTextFieldVisible;
    notifyListeners();
  }

  void submitUnicode(String text) {
    // TODO: process Unicode value and modify text
    _submittedUnicode = -1;
    notifyListeners();
  }
}
