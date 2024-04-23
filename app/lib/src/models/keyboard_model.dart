// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:app/src/constants/constants.dart';

class KeyboardModel extends ChangeNotifier {
  var _currentKeyboardId = CustomKeyboardId.malayalamOriginal;
  var _isKeyboardLightOn = false;
  var _isTypeInCurrentScript = true;

  CustomKeyboardId get currentKeyboardId => _currentKeyboardId;
  bool get isKeyboardLightOn => _isKeyboardLightOn;
  bool get isTypeInCurrentScript => _isTypeInCurrentScript;

  void chooseKeyboard({required CustomKeyboardId id}) {
    _currentKeyboardId = id;
    notifyListeners();
  }

  void toggleKeyboardLightVisibility() {
    _isKeyboardLightOn = !_isKeyboardLightOn;
    notifyListeners();
  }

  void toggleTypeInCurrentScript() {
    _isTypeInCurrentScript = !_isTypeInCurrentScript;
    notifyListeners();
  }
}
