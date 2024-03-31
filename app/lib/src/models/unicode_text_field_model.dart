// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class UnicodeTextFieldModel extends ChangeNotifier {
  var _isUnicodeTextFieldVisible = true;

  bool get isUnicodeTextFieldVisible => _isUnicodeTextFieldVisible;

  void toggleUnicodeTextFieldVisibility() {
    _isUnicodeTextFieldVisible = !_isUnicodeTextFieldVisible;
    notifyListeners();
  }
}
