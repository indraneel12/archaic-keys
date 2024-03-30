// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

abstract class AppFeature {
  const AppFeature({
    required this.context,
    required this.description,
    required this.thumbnail,
  });

  final BuildContext context;
  final String description;
  final Icon thumbnail;

  void Function() get action;
}
