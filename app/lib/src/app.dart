// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/pages/home_page.dart';

class App extends StatelessWidget {
  App({super.key});

  final _verticalScrollController = ScrollController();
  final _horizontalScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.sizeOf(context).width;
    final currentHeight = MediaQuery.sizeOf(context).height;
    final layoutWidth =
        max(AppDimensions.minWidth, min(currentWidth, AppDimensions.maxWidth));
    final layoutHeight = max(
        AppDimensions.minHeight, min(currentHeight, AppDimensions.maxHeight));
    final horizontalLayoutPadding = ((currentWidth - layoutWidth) >= 32.0)
        ? 0.0
        : 16.0 - max(0, ((currentWidth - layoutWidth) / 2.0));
    final verticalLayoutPadding = ((currentHeight - layoutHeight) >= 32.0)
        ? 0.0
        : 16.0 - max(0, ((currentHeight - layoutHeight) / 2.0));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      title: AppMeta.name,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: AppDimensions.maxWidth,
              height: AppDimensions.maxHeight,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: _verticalScrollController,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _horizontalScrollController,
                  child: SizedBox(
                    width: layoutWidth,
                    height: layoutHeight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalLayoutPadding,
                        vertical: verticalLayoutPadding,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            width: 1.5,
                          ),
                        ),
                        child: const HomePage(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
