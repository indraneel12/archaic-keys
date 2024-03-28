// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class KeyboardLayoutPicker extends StatelessWidget {
  const KeyboardLayoutPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.keyboard),
      tooltip: 'Choose your Keyboard layout',
      onPressed: () {
        // TODO: handle the press (layout selection)
      },
    );
  }
}
