// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class TransliterationModel extends ChangeNotifier {
  var _isTransliterationOn = false;

  bool get isTransliterationOn => _isTransliterationOn;

  void toggleTransliteration() {
    _isTransliterationOn = !_isTransliterationOn;
    notifyListeners();
  }
}
