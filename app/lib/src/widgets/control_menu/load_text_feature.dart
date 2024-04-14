// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/utilities/app_feature.dart';
import 'package:app/src/models/models.dart';

class LoadTextFeature extends AppFeature {
  const LoadTextFeature(BuildContext context)
      : super(
          context: context,
          description: 'Load HTML text',
          thumbnail: const Icon(Icons.upload),
        );

  @override
  void Function() get action {
    return () {
      final textEditingController = TextEditingController();
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
                  leading: IconButton(
                    icon: const Icon(Icons.check),
                    onPressed: () {
                      try {
                        Provider.of<TextModel>(context, listen: false)
                            .load(textEditingController.text);
                        Navigator.pop(context);
                      } catch (e) {
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: const ListTile(
                                  leading: Icon(Icons.error),
                                  title: Text('Invalid HTML'),
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                  title: const Text('Load HTML Text'),
                ),
                const Divider(),
                const SizedBox(height: 8.0),
                Expanded(
                  child: SingleChildScrollView(
                    child: TextField(
                      controller: textEditingController,
                      keyboardType: TextInputType.multiline,
                      minLines: 100,
                      maxLines: null,
                    ),
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
