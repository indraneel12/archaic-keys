// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

import 'package:flutter/material.dart';

class VoiceTypingModel extends ChangeNotifier {
  var _isVoiceTypingOn = false;

  bool get isVoiceTypingOn => _isVoiceTypingOn;

  void toggleVoiceTyping() {
    // TODO: Voice Typing algorithm
    _isVoiceTypingOn = !_isVoiceTypingOn;
    notifyListeners();
  }

  void startListening(stt.SpeechToText speech, VoiceTypingModel voiceModel) async {
    await speech.initialize(); // Initialize the SpeechToText instance
    if (speech.isAvailable) {
      speech.listen(onResult: (SpeechRecognitionResult result) {
        // Check if the result is final
        if (result.finalResult) {
          final text = result.recognizedWords;
          print('Transcribed text: $text');
          // Do something with the transcribed text, e.g., send it to the model
        }
      });
    }
  }

  void stopListening(stt.SpeechToText speech) {
    speech.stop();
  }
}
