// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:app/src/constants.dart';
import 'package:app/src/app.dart';

export 'package:app/src/app.dart';

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
