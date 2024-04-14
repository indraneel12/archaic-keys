// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/menu.dart';

import 'settings_menu.dart';
import 'keyboard_menu.dart';
import 'nwp_model_menu.dart';
import 'translation_menu.dart';
import 'save_text_feature.dart';
import 'load_text_feature.dart';
import 'about_app_menu.dart';
import 'view_project_feature.dart';

export 'package:app/src/utilities/menu.dart';

export 'settings_menu.dart';
export 'keyboard_menu.dart';
export 'nwp_model_menu.dart';
export 'translation_menu.dart';
export 'save_text_feature.dart';
export 'load_text_feature.dart';
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
        NwpModelMenu(context),
        TranslationMenu(context),
        SaveTextFeature(context),
        LoadTextFeature(context),
        AboutAppMenu(context),
        ViewProjectFeature(context),
      ];

  ListTile buildListTile(AppFeature feature) {
    return ListTile(
      leading: feature.thumbnail,
      title: Text(feature.description),
      onTap: () {
        Navigator.of(context).pop();
        feature.action();
      },
    );
  }

  @override
  void show() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final controls = ControlMenu.buildControls(context);
        var menuItems = <Widget>[];
        menuItems.add(Menu.buildHeader(context, title: 'Control Menu'));
        menuItems.add(const Divider());
        menuItems.add(buildListTile(controls[0]));
        menuItems.add(buildListTile(controls[1]));
        menuItems.add(buildListTile(controls[2]));
        menuItems.add(const Divider());
        menuItems.add(buildListTile(controls[3]));
        menuItems.add(buildListTile(controls[4]));
        menuItems.add(buildListTile(controls[5]));
        menuItems.add(const Divider());
        menuItems.add(buildListTile(controls[6]));
        menuItems.add(buildListTile(controls[7]));
        menuItems.add(const Divider());
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: menuItems,
            ),
          ),
        );
      },
    );
  }
}
