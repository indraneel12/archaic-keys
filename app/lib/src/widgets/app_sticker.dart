// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/control_menu/about_app_menu.dart';

class AppSticker extends StatelessWidget {
  const AppSticker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppSticker.showAboutApp(context),
      child: Text(
        AppMeta.name,
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(fontFamily: CustomFonts.sixtyfour),
      ),
    );
  }

  static void showAboutApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(AppMeta.icon),
          content: AboutAppMenu.render(context),
        );
      },
    );
  }
}
