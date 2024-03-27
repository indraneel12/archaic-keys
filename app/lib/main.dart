// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
// 
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'src/constants.dart';

void main() {
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
            showAboutDialog(
              context: context,
              applicationIcon: const Icon(appIcon),
              applicationName: appName,
              applicationVersion: appVersion,
            );
          },
        ),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.language),
            tooltip: 'Choose language for your Keyboard',
            onPressed: () {
              // TODO: handle the press (language toggle)
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
