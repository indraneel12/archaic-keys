// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class NwpModelPicker extends StatelessWidget {
  const NwpModelPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.auto_fix_high),
      tooltip: 'Choose your Next Word Prediction model',
      onPressed: () {
        // TODO: handle the press (NWP model)
      },
    );
  }
}
