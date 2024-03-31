// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:app/src/constants/constants.dart';

class NwpModel extends ChangeNotifier {
  // TODO: initial NWP model
  var _currentNwpModelId = NwpModelId.dummy;

  String get currentNwpModelId => _currentNwpModelId;

  void chooseNwpModel({required String nwpModelId}) {
    if (!NwpModelId.all.contains(nwpModelId)) return;
    _currentNwpModelId = nwpModelId;
    notifyListeners();
  }
}
