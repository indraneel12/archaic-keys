// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'src/constants.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final chivoLicense = await rootBundle.loadString(LicensePaths.chivoMono);
    yield LicenseEntryWithLineBreaks(['google_fonts'], chivoLicense);
  });
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(title: appName),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(appIcon),
          tooltip: 'About your App',
          onPressed: () {
            // TODO: handle the press (help/about menu)
            final aboutText = Text(
              copyright,
              softWrap: false,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontFamily: 'ChivoMono',
                  ),
            );
            showAboutDialog(
              context: context,
              applicationIcon: const Icon(appIcon),
              applicationName: appName,
              applicationVersion: appVersion,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(128.0),
                    child: Image.asset(
                      appAuthorsImagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: aboutText,
                    ),
                  ),
                )
              ],
            );
          },
        ),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.language),
            tooltip: 'Choose your Keyboard language',
            onPressed: () {
              // TODO: handle the press (language selection)
            },
          ),
          IconButton(
            icon: const Icon(Icons.keyboard),
            tooltip: 'Choose your Keyboard layout',
            onPressed: () {
              // TODO: handle the press (layout selection)
            },
          ),
          IconButton(
            icon: const Icon(Icons.auto_fix_high),
            tooltip: 'Choose your Next Word Prediction model',
            onPressed: () {
              // TODO: handle the press (NWP model)
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Customize your App',
            onPressed: () {
              // TODO: handle the press (settings menu)
            },
          ),
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
  }
}
