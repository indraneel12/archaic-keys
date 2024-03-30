// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/app_feature.dart';

class SaveTextFeature extends AppFeature {
  const SaveTextFeature(BuildContext context)
      : super(
          context: context,
          description: 'Save current text',
          thumbnail: const Icon(Icons.save),
        );

  @override
  void Function() get action {
    // TODO: implement action (SaveTextFeature)
    return () => {};
  }
}
