// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';

class AboutAppButton extends StatelessWidget {
  const AboutAppButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.help),
      tooltip: 'About your App',
      onPressed: () {
        // TODO: handle the press (help/about menu)
        final aboutText = Text(
          copyright,
          softWrap: false,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontFamily: CustomFonts.chivoMono,
              ),
        );
        showAboutDialog(
          context: context,
          applicationIcon: const Icon(AppMeta.icon),
          applicationName: AppMeta.name,
          applicationVersion: AppMeta.version,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(128.0),
                child: Image.asset(
                  AppMeta.authorsImagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: aboutText,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
