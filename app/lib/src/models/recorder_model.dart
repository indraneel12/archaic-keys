// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class RecorderModel extends ChangeNotifier {
  var _isSaveAsHtmlOn = false;

  bool get isSaveAsHtmlOn => _isSaveAsHtmlOn;

  void toggleSaveAsHtml() {
    _isSaveAsHtmlOn = !_isSaveAsHtmlOn;
    notifyListeners();
  }
}
