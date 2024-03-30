// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/app_feature.dart';

class TransliterateFeature extends AppFeature {
  const TransliterateFeature(BuildContext context)
      : super(
          context: context,
          description: 'Transliterate current text',
          thumbnail: const Icon(Icons.translate),
        );

  @override
  void Function() get action {
    // TODO: implement action (TransliterateFeature)
    return () => {};
  }
}
