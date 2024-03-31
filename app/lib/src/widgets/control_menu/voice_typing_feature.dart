// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/app_feature.dart';

class VoiceTypingFeature extends AppFeature {
  const VoiceTypingFeature(BuildContext context)
      : super(
          context: context,
          description: 'Enable voice typing',
          thumbnail: const Icon(Icons.keyboard_voice),
        );

  @override
  void Function() get action {
    // TODO: implement action (VoiceTypingFeature)
    return () => {};
  }
}
