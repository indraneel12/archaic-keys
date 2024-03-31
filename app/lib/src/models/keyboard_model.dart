// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:app/src/constants.dart';

class KeyboardModel extends ChangeNotifier {
  var _currentKeyboardId = CustomKeyboardId.malayalam;

  String get currentKeyboardId => _currentKeyboardId;

  void chooseKeyboard({required String keyboardId}) {
    if (!CustomKeyboardId.all.contains(keyboardId)) return;
    _currentKeyboardId = keyboardId;
    notifyListeners();
  }
}
