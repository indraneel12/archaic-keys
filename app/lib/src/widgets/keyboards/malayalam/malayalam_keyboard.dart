// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:flutter_layout_grid/flutter_layout_grid.dart';

export 'malayalam_key.dart';

class MalayalamKeyboard extends StatelessWidget {
  const MalayalamKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement Malayalam Keyboard layout
    return LayoutGrid(
      rowSizes: [1.fr, 1.fr, 1.fr],
      columnSizes: [1.fr, 1.fr, 1.fr],
      children: [
        Container(color: Colors.red).withGridPlacement(
            columnStart: 1, columnSpan: 2, rowStart: 0, rowSpan: 1),
        Container(color: Colors.green).withGridPlacement(
            columnStart: 0, columnSpan: 2, rowStart: 1, rowSpan: 2),
        Container(color: Colors.blue).withGridPlacement(
            columnStart: 2, columnSpan: 1, rowStart: 2, rowSpan: 1),
      ],
    );
  }
}
