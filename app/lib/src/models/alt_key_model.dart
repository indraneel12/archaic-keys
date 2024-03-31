// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class AltKeyModel extends ChangeNotifier {
  var _isVirtualAltKeyOn = false;

  bool get isVirtualAltKeyOn => _isVirtualAltKeyOn;

  void toggleVirtualAltKey() {
    _isVirtualAltKeyOn = !_isVirtualAltKeyOn;
    notifyListeners();
  }
}
