// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class KeyButton extends StatefulWidget {
  static const minWidth = 32.0;
  static const minHeight = 32.0;

  const KeyButton({
    super.key,
    required this.character,
    this.fontFamily,
    this.isToggle = false,
    required this.onPressed,
  });

  final String character;
  final String? fontFamily;
  final bool isToggle;
  final void Function() onPressed;

  @override
  State<KeyButton> createState() => _KeyButtonState();
}

class _KeyButtonState extends State<KeyButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        width: KeyButton.minWidth,
        height: KeyButton.minHeight,
        child: InkWell(
          onTap: () {
            widget.onPressed();
            setState(() {
              if (widget.isToggle) {
                _isPressed = !_isPressed;
              }
            });
          },
          child: FittedBox(
            fit: BoxFit.fill,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              color: _isPressed ? Colors.blue : null,
              child: Text(
                widget.character,
                style: TextStyle(fontFamily: widget.fontFamily),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
