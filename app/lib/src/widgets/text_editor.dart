// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';

import 'package:app/src/models/models.dart';

class TextEditor extends StatefulWidget {
  const TextEditor({super.key, required this.textTracker});

  final NwpPredictionsModel textTracker;

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  final _controller = QuillController.basic();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onEditorTextChanged);
  }

  void _onEditorTextChanged() {
    widget.textTracker.updateCurrentText(_controller.document.toPlainText());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Consumer<TextToolbarModel>(
          builder: (context, model, child) {
            return model.isTextToolbarVisible
                ? child!
                : const SizedBox(height: 8.0);
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: QuillToolbar.simple(
              configurations: QuillSimpleToolbarConfigurations(
                controller: _controller,
                multiRowsDisplay: true,
                showFontFamily: false, // currently, due to less Indic fonts
              ),
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

  @override
  void dispose() {
    _controller.removeListener(_onEditorTextChanged);
    super.dispose();
  }
}
