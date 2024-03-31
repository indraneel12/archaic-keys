// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';

class TextEditor extends StatefulWidget {
  const TextEditor({super.key});

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  final _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: QuillToolbar.simple(
            configurations: QuillSimpleToolbarConfigurations(
              controller: _controller,
              multiRowsDisplay: true,
              showFontFamily: false, // until enough Indic fonts are available
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary,
                width: 0.5,
              ),
            ),
            child: QuillEditor.basic(
              configurations: QuillEditorConfigurations(
                controller: _controller,
                readOnly: false,
                autoFocus: true,
                scrollable: true,
              ),
            ),
          ),
        )
      ],
    );
  }
}
