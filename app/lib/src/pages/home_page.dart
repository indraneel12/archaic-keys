// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/models/models.dart';
import 'package:app/src/widgets/control_menu/control_menu_header.dart';
import 'package:app/src/widgets/text_editor.dart';
import 'package:app/src/widgets/keyboards/custom_keyboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            child: const ControlMenuHeader(),
          ),
        ),
        Expanded(
          flex: 9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: TextEditor(
                  textTracker:
                      Provider.of<NwpPredictionsModel>(context, listen: false),
                ),
              ),
              const SizedBox(height: 8.0),
              const Expanded(
                flex: 4,
                child: CustomKeyboard(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
