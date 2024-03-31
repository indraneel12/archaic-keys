// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'constants.dart';

class ConfigurationsModel extends ChangeNotifier {
  ConfigurationsModel();

  var _isTextToolbarVisible = true;
  var _isKeyboardLightOn = true;
  var _nwpPredictionsCount = ImplementationConstraints.minNwpPredictions;
  var _currentKeyboardId = CustomKeyboardId.malayalam;
  var _currentNwpModelId = NwpModelId.dummy; // TODO: initial NWP model
  var _isVoiceTypingOn = false;
  var _isVirtualShiftKeyOn = false;
  var _isVirtualAltKeyOn = false;
  var _isVirtualCtrlKeyOn = false;

  bool get isTextToolbarVisible => _isTextToolbarVisible;
  bool get isKeyboardLightOn => _isKeyboardLightOn;
  int get nwpPredictionsCount => _nwpPredictionsCount;
  String get currentKeyboardId => _currentKeyboardId;
  String get currentNwpModelId => _currentNwpModelId;
  bool get isVoiceTypingOn => _isVoiceTypingOn;
  bool get isVirtualShiftKeyOn => _isVirtualShiftKeyOn;
  bool get isVirtualAltKeyOn => _isVirtualAltKeyOn;
  bool get isVirtualCtrlKeyOn => _isVirtualCtrlKeyOn;

  void toggleToolbarVisibility() {
    _isTextToolbarVisible = !_isTextToolbarVisible;
    notifyListeners();
  }

  void toggleKeyboardLightVisibility() {
    _isKeyboardLightOn = !_isKeyboardLightOn;
    notifyListeners();
  }

  void updateNwpPredictionsCount(int value) {
    if (value < ImplementationConstraints.minNwpPredictions) return;
    if (value > ImplementationConstraints.maxNwpPredictions) return;
    _nwpPredictionsCount = value;
    notifyListeners();
  }

  void chooseKeyboard({required String keyboardId}) {
    if (!CustomKeyboardId.all.contains(keyboardId)) return;
    _currentKeyboardId = keyboardId;
    notifyListeners();
  }

  void chooseNwpModel({required String nwpModelId}) {
    if (!NwpModelId.all.contains(nwpModelId)) return;
    _currentNwpModelId = nwpModelId;
    notifyListeners();
  }

  void toggleVoiceTyping() {
    _isVoiceTypingOn = !_isVoiceTypingOn;
    notifyListeners();
  }

  void toggleVirtualShiftKey() {
    _isVirtualShiftKeyOn = !_isVirtualShiftKeyOn;
    notifyListeners();
  }

  void toggleVirtualAltKey() {
    _isVirtualAltKeyOn = !_isVirtualAltKeyOn;
    notifyListeners();
  }

  void toggleVirtualCtrlKey() {
    _isVirtualCtrlKeyOn = !_isVirtualCtrlKeyOn;
    notifyListeners();
  }
}
