// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/app_feature.dart';

final voiceTypingFeature = VoiceTypingFeature();

class VoiceTypingFeature extends AppFeature {
  static const _singleton = VoiceTypingFeature._internal();

  factory VoiceTypingFeature() {
    return _singleton;
  }

  const VoiceTypingFeature._internal()
      : super(
          description: 'Enable voice typing',
          thumbnail: const Icon(Icons.keyboard_voice),
        );
}
