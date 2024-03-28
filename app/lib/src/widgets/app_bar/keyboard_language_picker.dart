// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class KeyboardLanguagePicker extends StatelessWidget {
  const KeyboardLanguagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.language),
      tooltip: 'Choose your Keyboard language',
      onPressed: () {
        // TODO: handle the press (language selection)
      },
    );
  }
}
