// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/app_feature.dart';

class ViewProjectFeature extends AppFeature {
  const ViewProjectFeature(BuildContext context)
      : super(
          context: context,
          description: 'View this Open Source project',
          thumbnail: const Icon(Icons.diversity_1),
        );

  static void openAppRepository() =>
      launchUrl(Uri.parse(AppMeta.repositoryURL));

  @override
  void Function() get action {
    return () => ViewProjectFeature.openAppRepository();
  }
}
