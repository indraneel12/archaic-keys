// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/configurations_model.dart';
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
            child: Consumer<ConfigurationsModel>(
              builder: (context, config, child) {
                return ListBody(
                  children: <Widget>[
                    Menu.buildHeader(context, title: 'Settings Menu'),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.design_services),
                      title: const Text('Toggle Text Toolbar'),
                      onTap: () {
                        Navigator.of(context).pop();
                        config.toggleToolbarVisibility();
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.flashlight_on),
                      title: const Text('Toggle Keyboard Light'),
                      onTap: () {
                        Navigator.of(context).pop();
                        // TODO: Toggle Keyboard Light (settings)
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
                );
              },
            ),
          ),
        );
      },
    );
  }
}
