// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart' show Icon, IconData;

import 'custom_fonts.dart';

abstract class CustomIcons {
  static final malayalam = Icon(
    IconData(
      'അ'.codeUnitAt(0),
      fontFamily: CustomFonts.notoSansMalayalam,
    ),
  );
  static final nepali = Icon(
    IconData(
      '𑐀'.codeUnitAt(0),
      fontFamily: CustomFonts.notoSansNewa,
    ),
  );
}
