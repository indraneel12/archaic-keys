// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/control_menu/control_menu_header.dart';

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
              Text(
                'w=${MediaQuery.sizeOf(context).width}',
              ),
              Text(
                'h=${MediaQuery.sizeOf(context).height}',
              ),
            ],
          ),
        )
      ],
    );
  }
}
