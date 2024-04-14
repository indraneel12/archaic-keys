// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:quill_html_converter/quill_html_converter.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'package:app/src/utilities/app_feature.dart';
import 'package:app/src/models/models.dart';

class SaveTextFeature extends AppFeature {
  const SaveTextFeature(BuildContext context)
      : super(
          context: context,
          description: 'Save current text',
          thumbnail: const Icon(Icons.save),
        );

  @override
  void Function() get action {
    return () {
      final html = Provider.of<TextModel>(context, listen: false)
          .controller
          .document
          .toDelta()
          .toHtml();
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Divider(),
                ListTile(
                  leading: Consumer<RecorderModel>(
                    builder: (context, model, child) {
                      return IconButton(
                        onPressed: () => model.toggleSaveAsHtml(),
                        icon: model.isSaveAsHtmlOn
                            ? const Icon(Icons.toggle_on)
                            : const Icon(Icons.toggle_off),
                      );
                    },
                  ),
                  title: const Text('HTML Text'),
                ),
                const Divider(),
                const SizedBox(height: 8.0),
                SingleChildScrollView(
                  child: Consumer<RecorderModel>(
                    builder: (context, model, child) {
                      return SelectionArea(
                        child: model.isSaveAsHtmlOn
                            ? Text(html)
                            : HtmlWidget(html),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      );
    };
  }
}
