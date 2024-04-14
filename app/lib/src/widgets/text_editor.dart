// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';

import 'package:app/src/models/models.dart';

class TextEditor extends StatelessWidget {
  const TextEditor({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditorController =
        Provider.of<TextModel>(context, listen: false).controller;
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
                controller: textEditorController,
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
                controller: textEditorController,
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
