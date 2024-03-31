// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

class CustomKeyboardId {
  static const malayalam = CustomKeyboardId._(1);
  static const nepali = CustomKeyboardId._(2);

  const CustomKeyboardId._(this.id);
  final int id;
}
