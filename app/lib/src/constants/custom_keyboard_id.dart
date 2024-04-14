// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

class CustomKeyboardId {
  static const malayalamOriginal = CustomKeyboardId._(1);
  static const malayalamDevanagari = CustomKeyboardId._(2);
  static const malayalamISO15919 = CustomKeyboardId._(3);
  static const nepali = CustomKeyboardId._(11);

  const CustomKeyboardId._(this.id);
  final int id;

  bool get isMalayalam => 01 <= id && id <= 10;
  bool get isNepali => 11 <= id && id <= 20;
}
