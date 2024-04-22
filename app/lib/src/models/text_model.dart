// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';

import 'package:app/src/constants/constants.dart';

class TextModel extends ChangeNotifier {
  late final _controller = QuillController.basic();

  TextModel() {
    _controller.addListener(() => notifyListeners());
  }

  var _transliterationPredictionsCount =
      FeatureConstraints.minTransliterationPredictions;

  QuillController get controller => _controller;
  String get currentText => _controller.document.toPlainText();
  int get currentCursorPosition => _controller.selection.end;
  String? get characterBehindCursor =>
      currentCursorPosition > 0 ? currentText[currentCursorPosition - 1] : null;

  int get transliterationPredictionsCount => _transliterationPredictionsCount;

  List<String> get transliterationPredictions {
    // TODO: implement Transliteration algorithm
    return [
      'Apple',
      'Mango',
      'Watermelon',
      '${currentText.length}',
      'Lemon',
      'Strawberry',
      'Pineapple',
    ];
  }

  void load(String html) {
    try {
      if (html == '') {
        _controller.clear();
      } else {
        _controller.document = Document.fromHtml(html);
        _controller.moveCursorToEnd();
      }
    } catch (e) {
      // UX: retain the existing content
      rethrow;
    }
  }

  void updateTransliterationPredictionsCount(int value) {
    if (value < FeatureConstraints.minTransliterationPredictions) return;
    if (value > FeatureConstraints.maxTransliterationPredictions) return;
    _transliterationPredictionsCount = value;
    notifyListeners();
  }

  void chooseTransliterationPrediction(String value) {
    // appendText(value, separatePre: true, separatePost: false)
    // TODO: Choose Transliteration Prediction (modify text)
  }

  void replaceSequence({
    required int index,
    required String target,
    int length = 1,
  }) {
    _controller.document.replace(index, length, target);
    _controller.moveCursorToPosition(index + target.length);
  }

  void appendText(
    String value, {
    bool separatePre = false,
    bool separatePost = false,
  }) {
    _controller.moveCursorToEnd();
    insertText(value, separatePre: separatePre, separatePost: separatePost);
  }

  void insertText(
    String value, {
    bool separatePre = false,
    bool separatePost = false,
  }) {
    final initialCursorPosition = currentCursorPosition;
    final initialCharacterIndex = initialCursorPosition - 1;
    separatePre = separatePre &&
        (initialCharacterIndex >= 0) &&
        (!(RegExp(r'\s').hasMatch(currentText[initialCharacterIndex])));
    separatePost =
        separatePost && (initialCursorPosition != currentText.length);
    if (separatePre && separatePost) {
      value = ' $value ';
    } else {
      if (separatePre) {
        value = ' $value';
      }
      if (separatePost) {
        value = '$value ';
      }
    }
    _controller.document.insert(initialCursorPosition, value);
    _controller.moveCursorToPosition(initialCursorPosition + value.length);
  }
}
