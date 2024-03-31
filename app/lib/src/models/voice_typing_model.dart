// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

class VoiceTypingModel extends ChangeNotifier {
  var _isVoiceTypingOn = false;

  bool get isVoiceTypingOn => _isVoiceTypingOn;

  void toggleVoiceTyping() {
    _isVoiceTypingOn = !_isVoiceTypingOn;
    notifyListeners();
  }
}
