// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/control_menu/control_menu.dart';

import 'app_sticker.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  static bool isSpacious({required double width, required double height}) {
    // TODO: implement accurate App Header responsiveness
    return (width > 600.0 && (width / height) > 2.0) ||
        ((width / height) > 1.25 &&
            width > AppDimensions.minWidth &&
            height > AppDimensions.minHeight);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final controls = [
          KeyboardMenu(context),
          VoiceTypingFeature(context),
          NwpModelMenu(context),
          TransliterateFeature(context),
          SettingsMenu(context),
          AboutAppMenu(context),
        ];
        final spacious = AppHeader.isSpacious(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
        );
        final controlMenu = spacious ? null : ControlMenu(context);
        return Row(
          children: <Widget>[
            if (!spacious)
              FittedBox(
                child: IconButton(
                  icon: controlMenu!.thumbnail,
                  tooltip: controlMenu.description,
                  onPressed: controlMenu.action,
                ),
              ),
            Padding(
              padding: EdgeInsets.all(constraints.maxHeight * 0.20),
              child: const FittedBox(child: AppSticker()),
            ),
            const Spacer(),
            if (spacious)
              for (final feature in controls)
                FittedBox(
                  child: IconButton(
                    icon: feature.thumbnail,
                    tooltip: feature.description,
                    onPressed: feature.action,
                  ),
                ),
          ],
        );
      },
    );
  }
}
