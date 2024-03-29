// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/utilities/layout_decider.dart';
import 'package:app/src/widgets/all_widgets.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(LicensePaths.chivoMono);
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(LicensePaths.sixtyfour);
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const App());
}

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (LayoutDecider.from(context) == LayoutDecider.desktop) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          toolbarHeight: 64.0,
          title: const AppTitle(),
          actions: const <Widget>[
            KeyboardLanguagePicker(),
            KeyboardLayoutPicker(),
            NwpModelPicker(),
            VoiceTypingButton(),
            TransliterateButton(),
            SettingsButton(),
            AboutAppButton()
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    }
  }
}
