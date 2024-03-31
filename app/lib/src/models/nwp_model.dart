// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';

import 'package:app/src/constants/constants.dart';

class NwpModel extends ChangeNotifier {
  // TODO: initial NWP model
  var _currentNwpModelId = NwpModelId.dummy;

  NwpModelId get currentNwpModelId => _currentNwpModelId;

  void chooseNwpModel({required NwpModelId id}) {
    _currentNwpModelId = id;
    notifyListeners();
  }
}
