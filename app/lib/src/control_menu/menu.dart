// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/app_feature.dart';

abstract class Menu extends AppFeature {
  const Menu({
    required super.description,
    required super.thumbnail,
  });

  void show({required BuildContext using});
}
