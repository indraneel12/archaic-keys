// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:math';

import 'package:flutter/material.dart';

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
        SizedBox(
          height: max(
            30.0,
            min(
              50.0,
              MediaQuery.sizeOf(context).height * 0.1,
            ),
          ),
          child: Container(
            color: Theme.of(context).colorScheme.inversePrimary,
            child: const ControlMenuHeader(),
          ),
        ),
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: TextEditor(),
              ),
              SizedBox(height: 8.0),
              Expanded(
                flex: 3,
                child: CustomKeyboard(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
