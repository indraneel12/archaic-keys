// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';
import 'package:app/src/models/models.dart';
import 'package:app/src/utilities/menu.dart';

import 'package:app/src/widgets/keyboards/malayalam/malayalam_key.dart';
import 'package:app/src/widgets/keyboards/nepali/nepali_key.dart';

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
                Menu.buildHeader(context, title: 'Keyboard Menu'),
                const Divider(),
                ListTile(
                  leading: MalayalamKey.iconMalayalamOriginal,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Malayalam'),
                  onTap: () {
                    Provider.of<KeyboardModel>(
                      context,
                      listen: false,
                    ).chooseKeyboard(id: CustomKeyboardId.malayalamOriginal);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: MalayalamKey.iconMalayalamDevanagari,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Malayalam (Devanagari)'),
                  onTap: () {
                    Provider.of<KeyboardModel>(
                      context,
                      listen: false,
                    ).chooseKeyboard(id: CustomKeyboardId.malayalamDevanagari);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: MalayalamKey.iconMalayalamISO15919,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Malayalam (ISO 15919)'),
                  onTap: () {
                    Provider.of<KeyboardModel>(
                      context,
                      listen: false,
                    ).chooseKeyboard(id: CustomKeyboardId.malayalamISO15919);
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
                ListTile(
                  leading: NepaliKey.iconNepaliOriginal,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Nepali'),
                  onTap: () {
                    Provider.of<KeyboardModel>(context, listen: false)
                        .chooseKeyboard(id: CustomKeyboardId.nepaliOriginal);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: NepaliKey.iconNepaliDevanagari,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Nepali (Devanagari)'),
                  onTap: () {
                    Provider.of<KeyboardModel>(
                      context,
                      listen: false,
                    ).chooseKeyboard(id: CustomKeyboardId.nepaliDevanagari);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: NepaliKey.iconNepaliRoman,
                  minLeadingWidth: KeyboardMenu.iconSpace,
                  title: const Text('Nepali (Roman)'),
                  onTap: () {
                    Provider.of<KeyboardModel>(
                      context,
                      listen: false,
                    ).chooseKeyboard(id: CustomKeyboardId.nepaliRoman);
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
