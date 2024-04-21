// Copyright (c) 2024, Deepen Shrestha
// Copyright (c) 2024, Indraneel Rajeevan
//
// SPDX-License-Identifier: BSD-3-Clause

// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<List<String>> submitQuery(
    String word,
    int predictionCount,
  ) async {
    // var url1 = dotenv.env['API_URL']!;
    // print(url1);
    var url = Uri.parse('http://localhost:8080/predict_next_word'); // for NWP
    // var url = Uri.parse('http://localhost:8080/transliterate'); // for Transliteration
    try {
      var response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'context': word,
          'prediction-count': predictionCount,
          'language': 'Nepali',
        }),
      );

      if (response.statusCode >= 200 && response.statusCode <= 299) {
        var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        List<String> predictions =
            List<String>.from(jsonResponse['predictions']);
        return predictions;
      } else {
        throw Exception('Failed to load data: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Failed to make API call: $e');
    }
  }
}

// // Example:
// void handlePress() async {
//   List<String>result = await ApiService.submitData("शीघ्र स्वास्थ्य लाभको", 5);
//   print(result);
// }
