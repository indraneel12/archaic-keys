// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class KeyboardLightModel extends ChangeNotifier {
  var _isKeyboardLightOn = true;

  bool get isKeyboardLightOn => _isKeyboardLightOn;

  void toggleKeyboardLightVisibility() {
    _isKeyboardLightOn = !_isKeyboardLightOn;
    notifyListeners();
  }
}
