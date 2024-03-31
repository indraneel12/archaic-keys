// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:flutter_quill/flutter_quill.dart';

import 'package:app/src/constants/constants.dart';

class NwpPredictionsModel extends ChangeNotifier {
  final _textEditorController = QuillController.basic();

  NwpPredictionsModel() {
    _textEditorController.addListener(() => notifyListeners());
  }

  var _nwpPredictionsCount = FeatureConstraints.minNwpPredictions;
  var _chosenNwpPrediction = '';

  QuillController get textEditorController => _textEditorController;
  int get nwpPredictionsCount => _nwpPredictionsCount;
  String get chosenNwpPrediction => _chosenNwpPrediction;
  String get currentText => _textEditorController.document.toPlainText();

  List<String> get nwpPredictions {
    // TODO: implement NWP algorithm
    return [
      'Apple',
      'Mango',
      'Watermelon',
      'X${currentText.trim()}',
      'Lemon',
      'Strawberry',
      'Pineapple',
    ];
  }

  void updateNwpPredictionsCount(int value) {
    if (value < FeatureConstraints.minNwpPredictions) return;
    if (value > FeatureConstraints.maxNwpPredictions) return;
    _nwpPredictionsCount = value;
    notifyListeners();
  }

  void chooseNwpPrediction(String value) {
    // TODO: use chosen NWP prediction
    _chosenNwpPrediction = value;
    notifyListeners();
  }
}
