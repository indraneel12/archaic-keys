// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

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

  void startListening(
    stt.SpeechToText speech,
    VoiceTypingModel voiceModel,
    String localeLanguage,
  ) async {
    await speech.initialize(
      onStatus: (String status) {
        debugPrint('Speech recognition status: $status');
      },
      onError: (SpeechRecognitionError error) {
        debugPrint('Speech recognition error: ${error.errorMsg}');
      },
      // listenFor: Duration(minutes: 2), // Listen for up to 2 minutes
    ); // Initialize the SpeechToText instance
    if (speech.isAvailable) {
      speech.listen(
        onResult: (SpeechRecognitionResult result) {
          // Check if the result is final
          if (result.finalResult) {
            final text = result.recognizedWords;
            debugPrint('Transcribed text: $text');
            // Do something with the transcribed text, e.g., send it to the model
          }
        },
        localeId: localeLanguage,
      );
    }
  }

  void stopListening(stt.SpeechToText speech) {
    speech.stop();
  }

  void showListeningPopup(stt.SpeechToText speech, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Listening...'),
          content: const Text('Please start speaking.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                toggleVoiceTyping();
                stopListening(speech);
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
