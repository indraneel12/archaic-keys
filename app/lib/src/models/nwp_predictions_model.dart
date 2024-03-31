// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:app/src/constants.dart';

class NwpPredictionsModel extends ChangeNotifier {
  var _nwpPredictionsCount = ImplementationConstraints.minNwpPredictions;
  var _currentNwpPrediction = '';

  int get nwpPredictionsCount => _nwpPredictionsCount;
  String get currentNwpPrediction => _currentNwpPrediction;

  void updateNwpPredictionsCount(int value) {
    if (value < ImplementationConstraints.minNwpPredictions) return;
    if (value > ImplementationConstraints.maxNwpPredictions) return;
    _nwpPredictionsCount = value;
    notifyListeners();
  }

  void updateNwpPrediction(String value) {
    _currentNwpPrediction = value;
    notifyListeners();
  }
}
