// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/control_menu/control_menu.dart';

class AppSticker extends StatelessWidget {
  const AppSticker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ControlMenu(context).show(),
      child: Text(
        AppMeta.name,
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(fontFamily: CustomFonts.sixtyfour),
      ),
    );
  }
}