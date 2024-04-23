// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'package:app/src/constants/custom_keyboard_id.dart';
import 'package:app/src/utilities/transliteration_exception.dart';

class TransliterationModel extends ChangeNotifier {
  static const urlPrefix = 'https://xlit-api.ai4bharat.org/tl';
  static const errorMessage = 'Could not fetch response from AI4Bharat...';

  var _isTransliterationOn = true;

  bool get isTransliterationOn => _isTransliterationOn;

  void toggleTransliteration() {
    _isTransliterationOn = !_isTransliterationOn;
    notifyListeners();
  }

  static String languageCodeOf(CustomKeyboardId keyboard) {
    if (keyboard.isMalayalam) {
      return 'ml';
    }
    if (keyboard.isNepali) {
      return 'ne';
    }
    return '';
  }

  // Reference: https://github.com/AI4Bharat/indic-transliterate-js
  static Future<List<String>> englishTo(
    CustomKeyboardId targetLang,
    String text,
  ) async {
    if (text.isEmpty) {
      throw TransliterationException('Empty text from the cursor...');
    }

    final url = '$urlPrefix/${languageCodeOf(targetLang)}/$text';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
      return List<String>.from(jsonResponse['result'] as List);
    } else {
      throw TransliterationException(errorMessage);
    }
  }
}
