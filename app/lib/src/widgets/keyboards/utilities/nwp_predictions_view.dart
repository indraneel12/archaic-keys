// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/models/models.dart';

class NwpPredictionsView extends StatelessWidget {
  static const tooltip = 'Choose NWP Prediction';
  static const minWidth = 32.0;
  static const minHeight = 32.0;

  const NwpPredictionsView({
    super.key,
    this.alignment = Alignment.center,
  });

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
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
            child: Consumer<NwpPredictionsModel>(
              builder: (context, model, child) {
                return Row(
                  children: <Widget>[
                    for (final prediction in model.nwpPredictions)
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
                              onTap: () =>
                                  model.chooseNwpPrediction(prediction),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
