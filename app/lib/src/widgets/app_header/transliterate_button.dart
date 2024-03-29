// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class TransliterateButton extends StatelessWidget {
  const TransliterateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.translate),
      tooltip: 'Transliterate current text',
      onPressed: () {
        // TODO: handle the press (transliteration)
      },
    );
  }
}
