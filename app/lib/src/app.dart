// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/pages/home_page.dart';

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
          minimum: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              width: AppDimensions.maxWidth,
              height: AppDimensions.maxHeight,
              child: OverflowBox(
                minWidth: AppDimensions.minWidth,
                minHeight: AppDimensions.minHeight,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  child: const HomePage(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
