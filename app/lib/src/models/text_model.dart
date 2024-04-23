// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:app/src/constants/constants.dart';

import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';

import 'package:app/src/models/models.dart';

class TextModel extends ChangeNotifier {
  late final _controller = QuillController.basic();

  static const errorWord = ('', -1, -1);
  static final lineFeed = String.fromCharCode(10);

  static bool isWordBoundary(String ch) {
    return (ch == ' ' || ch == '\n' || ch == lineFeed);
  }

  TextModel() {
    _controller.addListener(() => notifyListeners());
  }

  QuillController get controller => _controller;
  String get currentText => _controller.document.toPlainText();
  int get currentCursorPosition => _controller.selection.end;
  String? get characterBehindCursor =>
      currentCursorPosition > 0 ? currentText[currentCursorPosition - 1] : null;

  (String, int, int) get wordFromCursor {
    final text = currentText;
    var currentIndex = currentCursorPosition;
    if (currentIndex < 1 || currentIndex >= text.length) {
      return errorWord;
    }
    var startIndex = currentIndex;
    var endIndex = currentIndex;
    if (isWordBoundary(text[currentIndex])) {
      startIndex--;
    }
    if (startIndex < 0 ||
        endIndex < 0 ||
        startIndex >= text.length ||
        endIndex >= text.length) {
      return errorWord;
    }
    while (startIndex > 0 && !isWordBoundary(text[startIndex])) {
      startIndex--;
    }
    while (endIndex < text.length && !isWordBoundary(text[endIndex])) {
      endIndex++;
    }
    final res = text.substring(startIndex, endIndex).trim();
    startIndex = startIndex <= 1 ? 0 : startIndex + 1;
    return res.isEmpty
        ? errorWord
        : (
            res,
            startIndex,
            endIndex,
          );
  }

  Future<(List<String>, String, int, int)> fetchTransliterationPredictions(
    CustomKeyboardId currentKeyboard,
  ) async {
    final (w, s, e) = wordFromCursor;
    final predictions =
        await TransliterationModel.englishTo(currentKeyboard, w);
    return (
      predictions,
      w,
      s,
      e,
    );
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

  void chooseTransliterationPrediction(
    String value,
    (String, int, int) source,
  ) {
    if (value.isEmpty || value.allMatches(' ').length > 1) {
      return refocus();
    }
    final (w, s, _) = source;
    if (w.isEmpty) {
      return refocus();
    }
    replaceSequence(
      index: s,
      length: w.length,
      target: value,
    );
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

  void refocus() {
    insertText('');
  }
}
