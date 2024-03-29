// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/utilities/layout_decider.dart';
import 'package:app/src/widgets/all_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    if (LayoutDecider.from(context) == LayoutDecider.desktop) {
      return Column(
        children: <Widget>[
          const AppHeader(),
          Text(
            'w=${MediaQuery.sizeOf(context).width}',
          ),
          Text(
            'h=${MediaQuery.sizeOf(context).height}',
          ),
        ],
      );
    } else {
      return const Placeholder();
    }
  }
}
