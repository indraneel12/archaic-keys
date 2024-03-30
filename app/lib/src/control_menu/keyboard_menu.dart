// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'menu.dart';

final keyboardMenu = KeyboardMenu();

class KeyboardMenu extends Menu {
  static const _singleton = KeyboardMenu._internal();

  factory KeyboardMenu() {
    return _singleton;
  }

  const KeyboardMenu._internal()
      : super(
          description: 'Choose your Keyboard',
          thumbnail: const Icon(Icons.keyboard),
        );

  @override
  void show({required BuildContext using}) {
    // TODO: implement KeyboardLanguageMenu->show
    showDialog(
      context: using,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.input),
                  title: Text('Option 1'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('Option 2'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Option 3'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.border_color),
                  title: Text('Option 4'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Option 5'),
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
