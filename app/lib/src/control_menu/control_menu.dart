// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'menu.dart';
import 'keyboard_menu.dart';
import 'voice_typing_feature.dart';
import 'nwp_model_menu.dart';
import 'transliterate_feature.dart';
import 'settings_menu.dart';

export 'menu.dart';
export 'keyboard_menu.dart';
export 'voice_typing_feature.dart';
export 'nwp_model_menu.dart';
export 'transliterate_feature.dart';
export 'settings_menu.dart';

class ControlMenu extends Menu {
  const ControlMenu()
      : super(
          description: 'Open the Control Menu',
          thumbnail: const Icon(Icons.menu),
        );

  @override
  void show({required BuildContext using}) {
    showDialog(
      context: using,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  leading: keyboardMenu.thumbnail,
                  title: Text(keyboardMenu.description),
                  onTap: () => {},
                ),
                ListTile(
                  leading: voiceTypingFeature.thumbnail,
                  title: Text(voiceTypingFeature.description),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: nwpModelMenu.thumbnail,
                  title: Text(nwpModelMenu.description),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: transliterateFeature.thumbnail,
                  title: Text(transliterateFeature.description),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: settingsMenu.thumbnail,
                  title: Text(settingsMenu.description),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
