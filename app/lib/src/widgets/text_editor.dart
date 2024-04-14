// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';

import 'package:app/src/constants/app_dimensions.dart';
import 'package:app/src/models/models.dart';

class TextEditor extends StatelessWidget {
  const TextEditor({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditorController =
        Provider.of<TextModel>(context, listen: false).controller;
    final hasEnoughHeight =
        MediaQuery.sizeOf(context).height - 100.0 >= AppDimensions.minHeight;
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
                multiRowsDisplay: hasEnoughHeight,
                showFontFamily: false, // currently, due to less Indic fonts
              ),
            ),
          ),
        ),
        if (!hasEnoughHeight &&
            Provider.of<TextToolbarModel>(context, listen: false)
                .isTextToolbarVisible)
          const SizedBox(height: 8.0),
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
