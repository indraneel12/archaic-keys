// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/widgets/app_sticker.dart';
import 'package:app/src/widgets/control_menu/control_menu.dart';

class ControlMenuHeader extends StatelessWidget {
  const ControlMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final spacious = MediaQuery.sizeOf(context).width > 700.0;
        return Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: constraints.maxHeight * 0.20,
              ),
              child: const FittedBox(
                alignment: Alignment.centerLeft,
                child: AppSticker(),
              ),
            ),
            const Spacer(),
            if (spacious)
              for (final feature in ControlMenu.buildControls(context))
                FittedBox(
                  child: IconButton(
                    icon: feature.thumbnail,
                    tooltip: feature.description,
                    onPressed: feature.action,
                  ),
                ),
          ],
        );
      },
    );
  }
}
