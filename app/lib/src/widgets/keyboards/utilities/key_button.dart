// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class KeyButton extends StatelessWidget {
  const KeyButton({
    super.key,
    required this.label,
    this.tooltip,
    this.fontFamily,
    this.isToggle = false,
    this.isActive = false,
    this.backgroundColor,
    this.activeColor,
    this.thumbnail,
    this.minWidth = 32.0,
    this.minHeight = 32.0,
    required this.onPressed,
  });

  final String label;
  final String? tooltip;
  final String? fontFamily;
  final bool isToggle;
  final bool isActive;
  final Color? backgroundColor;
  final Color? activeColor;
  final Icon? thumbnail;
  final double? minWidth;
  final double? minHeight;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        width: minWidth,
        height: minHeight,
        child: InkWell(
          onTap: onPressed,
          child: Tooltip(
            message: tooltip ?? (thumbnail != null ? label : ''),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                color: isActive ? activeColor : backgroundColor,
                child: thumbnail ??
                    Text(
                      label,
                      style: TextStyle(fontFamily: fontFamily),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
