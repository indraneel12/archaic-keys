// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'nepali_key.dart';

export 'nepali_key.dart';

// TODO: implement Nepali Keyboard
class NepaliKeyboard extends StatelessWidget {
  const NepaliKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      rowSizes: [for (int i = 0; i < 6; i++) 1.fr],
      columnSizes: [for (int i = 0; i < 13; i++) 1.fr],
      rowGap: 0.0,
      columnGap: 0.0,
      children: <Widget>[
        const NepaliKey(
          value: '𑐀',
          devanagariLabel: 'अ',
          romanLabel: 'a',
        ).withGridPlacement(rowStart: 0, columnStart: 0),
      ],
    );
  }
}
