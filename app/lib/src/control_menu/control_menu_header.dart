// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/widgets/app_sticker.dart';
import 'package:app/src/control_menu/control_menu.dart';

class ControlMenuHeader extends StatelessWidget {
  const ControlMenuHeader({super.key});

  static bool isSpacious({required double width, required double height}) {
    // debugPrint([width, height, width / height].toString());
    // return (width > 650.0 && (width / height) > 2.0) ||
    //     ((width / height) > 1.35 &&
    //         width > AppDimensions.minWidth &&
    //         height > AppDimensions.minHeight);
    return (width / height) > 1.33;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final spacious = ControlMenuHeader.isSpacious(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
        );
        return Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(constraints.maxHeight * 0.20),
              child: const FittedBox(child: AppSticker()),
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
