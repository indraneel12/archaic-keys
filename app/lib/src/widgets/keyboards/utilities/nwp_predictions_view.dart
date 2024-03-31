// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

class NwpPredictionsView extends StatelessWidget {
  static const tooltip = 'Choose NWP Prediction';
  static const minWidth = 32.0;
  static const minHeight = 32.0;

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
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Tooltip(
          preferBelow: false,
          message: NwpPredictionsView.tooltip,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (final prediction in placeholderPredictions)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRect(
                      child: SizedBox(
                        height: NwpPredictionsView.minHeight,
                        child: InkWell(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text(prediction),
                          ),
                          onTap: () {
                            // TODO: NWP Prediction (on tap)
                            debugPrint('test: $prediction');
                          },
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
