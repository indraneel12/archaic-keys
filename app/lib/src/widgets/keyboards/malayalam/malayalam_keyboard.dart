// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'malayalam_key.dart';

export 'malayalam_key.dart';

class MalayalamKeyboard extends StatelessWidget {
  const MalayalamKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement Malayalam Keyboard layout
    return LayoutGrid(
      rowSizes: [1.fr, 1.fr, 1.fr],
      columnSizes: [1.fr, 1.fr, 1.fr],
      rowGap: 0.0,
      columnGap: 0.0,
      children: <Widget>[
        const MalayalamKey(
          value: 'അ',
          devanagariLabel: 'अ',
          iso15919Label: 'a',
        ).withGridPlacement(
          rowStart: 0,
          rowSpan: 1,
          columnStart: 0,
          columnSpan: 2,
        ),
        const MalayalamKey(
          value: 'ആ',
          devanagariLabel: 'आ',
          iso15919Label: 'ā',
        ).withGridPlacement(
          rowStart: 0,
          rowSpan: 1,
          columnStart: 2,
          columnSpan: 1,
        ),
        Container(color: Colors.blue).withGridPlacement(
            columnStart: 0, columnSpan: 3, rowStart: 1, rowSpan: 2),
      ],
    );
  }
}
