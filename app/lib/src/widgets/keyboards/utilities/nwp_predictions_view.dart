// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class NwpPredictionsView extends StatelessWidget {
  static const tooltip = 'Choose NWP Prediction';

  const NwpPredictionsView({super.key});

  static const placeholderPredictions = [
    'Apple',
    'Mango',
    'Watermelon',
    'Lemon',
    'Strawberry',
    'Pineapple',
  ];

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: NwpPredictionsView.tooltip,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              for (final prediction in placeholderPredictions)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    child: Text(prediction),
                    onTap: () {
                      // TODO: NWP Prediction (on tap)
                      debugPrint('test: $prediction');
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
