// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/utilities/menu.dart';

class KeyboardMenu extends Menu {
  static const iconSpace = 40.0;

  const KeyboardMenu(BuildContext context)
      : super(
          context: context,
          description: 'Choose your Keyboard',
          thumbnail: const Icon(Icons.keyboard),
        );

  @override
  void show() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Divider(),
                ListTile(
                  leading: CustomIcons.malayalam,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Malayalam'),
                  onTap: () {
                    // TODO: load Malayalam keyboard
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: CustomIcons.nepali,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Nepali'),
                  onTap: () {
                    // TODO: load Nepali keyboard
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
              ],
            ),
          ),
        );
      },
    );
  }
}
