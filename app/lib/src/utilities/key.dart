// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/app_feature.dart';

class Key extends AppFeature {
  Key({
    required super.context,
    required this.character,
    required this.onPressed,
  }) : super(
          description: 'Key: $character',
          thumbnail: Icon(IconData(character.codeUnitAt(0))),
        );

  final String character;
  final void Function() onPressed;

  @override
  void Function() get action => onPressed;
}
