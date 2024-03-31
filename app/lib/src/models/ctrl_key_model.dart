// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class CtrlKeyModel extends ChangeNotifier {
  var _isVirtualCtrlKeyOn = false;

  bool get isVirtualCtrlKeyOn => _isVirtualCtrlKeyOn;

  void toggleVirtualCtrlKey() {
    _isVirtualCtrlKeyOn = !_isVirtualCtrlKeyOn;
    notifyListeners();
  }
}
