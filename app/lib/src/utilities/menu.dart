// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/app_feature.dart';

export 'package:app/src/utilities/app_feature.dart';

abstract class Menu extends AppFeature {
  const Menu({
    required super.context,
    required super.description,
    required super.thumbnail,
  });

  static ListTile buildHeader(BuildContext context, {required String title}) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      onTap: null,
    );
  }

  @override
  void Function() get action {
    return () => show();
  }

  void show();
}
