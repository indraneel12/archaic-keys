// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';
import 'package:app/src/pages/home_page.dart';
import 'package:app/src/utilities/double_scrollview.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      title: AppMeta.name,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: DoubleScrollview(
              minWidth: AppDimensions.minWidth,
              minHeight: AppDimensions.minHeight,
              maxWidth: AppDimensions.maxWidth,
              maxHeight: AppDimensions.maxHeight,
              padding: 16.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  width: 1.5,
                ),
              ),
              body: const HomePage(),
            ),
          ),
        ),
      ),
    );
  }
}
