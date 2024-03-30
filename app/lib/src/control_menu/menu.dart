// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:app/src/app_feature.dart';

export 'package:app/src/app_feature.dart';

abstract class Menu extends AppFeature {
  const Menu({
    required super.context,
    required super.description,
    required super.thumbnail,
  });

  @override
  void Function() get action {
    return () => show();
  }

  void show();
}
