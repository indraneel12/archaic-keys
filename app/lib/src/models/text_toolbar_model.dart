// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class TextToolbarModel extends ChangeNotifier {
  var _isTextToolbarVisible = true;

  bool get isTextToolbarVisible => _isTextToolbarVisible;

  void toggleToolbarVisibility() {
    _isTextToolbarVisible = !_isTextToolbarVisible;
    notifyListeners();
  }
}
