// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

class CustomKeyboardId {
  static const malayalamOriginal = CustomKeyboardId._(11);
  static const malayalamDevanagari = CustomKeyboardId._(12);
  static const malayalamISO15919 = CustomKeyboardId._(13);

  static const nepaliOriginal = CustomKeyboardId._(21);
  static const nepaliDevanagari = CustomKeyboardId._(22);
  static const nepaliRoman = CustomKeyboardId._(23);

  const CustomKeyboardId._(this.id);
  final int id;

  bool get isMalayalam => 11 <= id && id <= 20;
  bool get isNepali => 21 <= id && id <= 30;
}
