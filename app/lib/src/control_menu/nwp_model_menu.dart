// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/menu.dart';

class NwpModelMenu extends Menu {
  const NwpModelMenu(BuildContext context)
      : super(
          context: context,
          description: 'Choose your NWP model',
          thumbnail: const Icon(Icons.auto_fix_high),
        );

  @override
  void show() {
    // TODO: implement NwpModelMenu->show
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.input),
                  title: const Text('Option 1'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Option 2'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Option 3'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: const Icon(Icons.border_color),
                  title: const Text('Option 4'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Option 5'),
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