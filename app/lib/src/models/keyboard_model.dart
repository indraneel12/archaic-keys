// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:app/src/constants/constants.dart';

class KeyboardModel extends ChangeNotifier {
  var _currentKeyboardId = CustomKeyboardId.malayalamOriginal;
  var _isKeyboardLightOn = false;

  CustomKeyboardId get currentKeyboardId => _currentKeyboardId;
  bool get isKeyboardLightOn => _isKeyboardLightOn;

  void chooseKeyboard({required CustomKeyboardId id}) {
    _currentKeyboardId = id;
    notifyListeners();
  }

  void toggleKeyboardLightVisibility() {
    _isKeyboardLightOn = !_isKeyboardLightOn;
    notifyListeners();
  }
}
