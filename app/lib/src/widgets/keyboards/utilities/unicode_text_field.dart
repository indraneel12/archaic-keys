// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class UnicodeTextField extends StatelessWidget {
  static const tooltip = 'Invoke any Unicode character';
  static const hint = 'U+XXXXXX';

  UnicodeTextField({super.key});

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: UnicodeTextField.tooltip,
      child: TextField(
        controller: _controller,
        autocorrect: false,
        enableSuggestions: false,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        expands: true,
        minLines: null,
        maxLines: null,
        decoration: const InputDecoration.collapsed(
          hintText: UnicodeTextField.hint,
          border: OutlineInputBorder(),
        ),
        onSubmitted: (String text) {
          // TODO: Unicode action (Text Field)
          _controller.clear();
        },
      ),
    );
  }
}
