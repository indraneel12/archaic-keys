// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class ShiftKeyModel extends ChangeNotifier {
  var _isVirtualShiftKeyOn = false;

  bool get isVirtualShiftKeyOn => _isVirtualShiftKeyOn;

  void toggleVirtualShiftKey() {
    _isVirtualShiftKeyOn = !_isVirtualShiftKeyOn;
    notifyListeners();
  }
}
