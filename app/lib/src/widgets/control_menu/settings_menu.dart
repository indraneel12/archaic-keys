// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/models/models.dart';
import 'package:app/src/utilities/menu.dart';
import 'package:app/src/widgets/nwp_predictions_slider.dart';

class SettingsMenu extends Menu {
  const SettingsMenu(BuildContext context)
      : super(
          context: context,
          description: 'Choose your App settings',
          thumbnail: const Icon(Icons.settings),
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
                Menu.buildHeader(context, title: 'Settings Menu'),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.design_services),
                  title: const Text('Toggle Text Toolbar'),
                  onTap: () {
                    Provider.of<TextToolbarModel>(context, listen: false)
                        .toggleToolbarVisibility();
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.mediation),
                  title: const Text('Toggle Unicode Option'),
                  onTap: () {
                    Provider.of<UnicodeTextFieldModel>(context, listen: false)
                        .toggleUnicodeTextFieldVisibility();
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.flashlight_on),
                  title: const Text('Toggle Keyboard Light'),
                  onTap: () {
                    Provider.of<KeyboardLightModel>(context, listen: false)
                        .toggleKeyboardLightVisibility();
                    Navigator.of(context).pop();
                  },
                ),
                const Divider(),
                const ListTile(
                  title: Text('Number of NWP Predictions'),
                  onTap: null,
                ),
                const NwpPredictionsSlider(),
                const Divider(),
              ],
            ),
          ),
        );
      },
    );
  }
}
