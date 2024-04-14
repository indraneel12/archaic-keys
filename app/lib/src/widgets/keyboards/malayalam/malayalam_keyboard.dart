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
      areas: '''
    red green blue
    red green blue
     .   .  blue
  ''',
      // Note that the number of columns and rows matches the grid above (3x3)
      rowSizes: [1.fr, 1.fr, 1.fr],
      columnSizes: [1.fr, 1.fr, 1.fr],
      children: [
        // Alternatively, an extension method on Widget is available
        Container(color: Colors.red).inGridArea('red'),
        Container(color: Colors.blue).inGridArea('blue'),
        Container(color: Colors.green).inGridArea('green'),
      ],
    );
  }
}
