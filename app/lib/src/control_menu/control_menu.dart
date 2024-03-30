// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/menu.dart';

import 'keyboard_menu.dart';
import 'voice_typing_feature.dart';
import 'nwp_model_menu.dart';
import 'translation_menu.dart';
import 'save_text_feature.dart';
import 'settings_menu.dart';
import 'about_app_menu.dart';
import 'view_project_feature.dart';

export 'package:app/src/utilities/menu.dart';

export 'keyboard_menu.dart';
export 'voice_typing_feature.dart';
export 'nwp_model_menu.dart';
export 'translation_menu.dart';
export 'save_text_feature.dart';
export 'settings_menu.dart';
export 'about_app_menu.dart';
export 'view_project_feature.dart';

class ControlMenu extends Menu {
  const ControlMenu(BuildContext context)
      : super(
          context: context,
          description: 'Open the Control Menu',
          thumbnail: const Icon(Icons.menu),
        );

  static List<AppFeature> buildControls(BuildContext context) => [
        SettingsMenu(context),
        KeyboardMenu(context),
        VoiceTypingFeature(context),
        NwpModelMenu(context),
        TranslationMenu(context),
        SaveTextFeature(context),
        AboutAppMenu(context),
        ViewProjectFeature(context),
      ];

  @override
  void show() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                for (final feature in ControlMenu.buildControls(context))
                  ListTile(
                    leading: feature.thumbnail,
                    title: Text(feature.description),
                    onTap: () {
                      Navigator.of(context).pop();
                      feature.action();
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
