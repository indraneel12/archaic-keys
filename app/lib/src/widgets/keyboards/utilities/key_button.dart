// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class KeyButton extends StatefulWidget {
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
  State<KeyButton> createState() => _KeyButtonState();
}

class _KeyButtonState extends State<KeyButton> {
  var _isPressed = false;

  @override
  void initState() {
    super.initState();
    _isPressed = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        width: widget.minWidth,
        height: widget.minHeight,
        child: InkWell(
          onTap: () {
            widget.onPressed();
            setState(() {
              if (widget.isToggle) {
                _isPressed = !_isPressed;
              }
            });
          },
          child: Tooltip(
            message: widget.tooltip ??
                (widget.thumbnail != null ? widget.label : ''),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                color: _isPressed ? widget.activeColor : widget.backgroundColor,
                child: widget.thumbnail ??
                    Text(
                      widget.label,
                      style: TextStyle(fontFamily: widget.fontFamily),
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
