// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/models/models.dart';

export 'src/app.dart';
export 'src/models/models.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AltKeyModel()),
        ChangeNotifierProvider(create: (context) => CtrlKeyModel()),
        ChangeNotifierProvider(create: (context) => KeyboardModel()),
        ChangeNotifierProvider(create: (context) => RecorderModel()),
        ChangeNotifierProvider(create: (context) => ShiftKeyModel()),
        ChangeNotifierProvider(create: (context) => TextModel()),
        ChangeNotifierProvider(create: (context) => TextToolbarModel()),
        ChangeNotifierProvider(create: (context) => UnicodeTextFieldModel()),
        ChangeNotifierProvider(create: (context) => VoiceTypingModel()),
      ],
      child: const App(),
    ),
  );
}
