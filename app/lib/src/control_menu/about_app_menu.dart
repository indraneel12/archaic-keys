// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/utilities/menu.dart';

import 'view_project_feature.dart';

class AboutAppMenu extends Menu {
  const AboutAppMenu(BuildContext context)
      : super(
          context: context,
          description: 'View meta information',
          thumbnail: const Icon(Icons.help),
        );

  static render(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          InkWell(
            onTap: () => ViewProjectFeature.openAppRepository(),
            child: Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(128.0),
                child: Image.asset(
                  AppMeta.authorsImagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32.0),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                copyright,
                softWrap: false,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontFamily: CustomFonts.chivoMono),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void show() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(AppMeta.icon),
          content: AboutAppMenu.render(context),
        );
      },
    );
  }
}
