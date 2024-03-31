// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:app/src/constants/constants.dart';

class KeyboardModel extends ChangeNotifier {
  var _currentKeyboardId = CustomKeyboardId.malayalam;

  CustomKeyboardId get currentKeyboardId => _currentKeyboardId;

  void chooseKeyboard({required CustomKeyboardId id}) {
    _currentKeyboardId = id;
    notifyListeners();
  }
}
