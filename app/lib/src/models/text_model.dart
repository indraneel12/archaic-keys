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

  var _nwpPredictionsCount = FeatureConstraints.minNwpPredictions;

  QuillController get controller => _controller;
  String get currentText => _controller.document.toPlainText();
  int get currentCursorPosition => _controller.selection.end;
  int get nwpPredictionsCount => _nwpPredictionsCount;

  List<String> get nwpPredictions {
    // TODO: implement NWP algorithm
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

  void updateNwpPredictionsCount(int value) {
    if (value < FeatureConstraints.minNwpPredictions) return;
    if (value > FeatureConstraints.maxNwpPredictions) return;
    _nwpPredictionsCount = value;
    notifyListeners();
  }

  void chooseNwpPrediction(String value) {
    appendText(value, separatePre: true, separatePost: false);
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
    separatePre = separatePre && initialCharacterIndex >= 0;
    separatePost = separatePost && initialCursorPosition != currentText.length;
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
