// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

class TransliterationException implements Exception {
  final String cause;

  TransliterationException(this.cause);

  @override
  String toString() {
    return cause;
  }
}
