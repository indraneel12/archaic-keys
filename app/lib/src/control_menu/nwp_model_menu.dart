// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'menu.dart';

final nwpModelMenu = NwpModelMenu();

class NwpModelMenu extends Menu {
  static const _singleton = NwpModelMenu._internal();

  factory NwpModelMenu() {
    return _singleton;
  }

  const NwpModelMenu._internal()
      : super(
          description: 'Choose your NWP model',
          thumbnail: const Icon(Icons.auto_fix_high),
        );

  @override
  void show({required BuildContext using}) {
    // TODO: implement NwpModelMenu->show
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
