// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/app_feature.dart';

final transliterateFeature = TransliterateFeature();

class TransliterateFeature extends AppFeature {
  static const _singleton = TransliterateFeature._internal();

  factory TransliterateFeature() {
    return _singleton;
  }

  const TransliterateFeature._internal()
      : super(
          description: 'Transliterate current text',
          thumbnail: const Icon(Icons.translate),
        );
}
