// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:app/src/constants.dart';

class AppSticker extends StatelessWidget {
  const AppSticker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showAboutApp(context),
      child: Text(
        AppMeta.name,
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(fontFamily: CustomFonts.sixtyfour),
      ),
    );
  }

  void showAboutApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(AppMeta.icon),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                InkWell(
                  onTap: () => launchUrl(Uri.parse(AppMeta.repositoryURL)),
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
          ),
        );
      },
    );
  }
}
