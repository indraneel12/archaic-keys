// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class VoiceTypingButton extends StatelessWidget {
  const VoiceTypingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.keyboard_voice),
      tooltip: 'Enable voice typing',
      onPressed: () {
        // TODO: handle the press (voice typing)
      },
    );
  }
}
