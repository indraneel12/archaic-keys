// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/models/models.dart';
import 'package:app/src/utilities/transliteration_exception.dart';

class TransliterationPredictionsView extends StatelessWidget {
  static const tooltip = 'Choose Transliteration Prediction';
  static const defaultMessage = 'Transliteration powered by AI4Bharat';
  static const minWidth = 32.0;
  static const minHeight = 32.0;

  const TransliterationPredictionsView({
    super.key,
    this.alignment = Alignment.centerLeft,
  });

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      preferBelow: false,
      message: TransliterationPredictionsView.tooltip,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Align(
          alignment: alignment,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Consumer<TransliterationModel>(
              builder: (context, model, child) {
                if (!model.isTransliterationOn) {
                  return const Text(defaultMessage);
                }
                return Consumer<TextModel>(builder: (context, model, child) {
                  return FutureBuilder<(List<String>, String, int, int)>(
                      future: model.fetchTransliterationPredictions(
                        Provider.of<KeyboardModel>(context, listen: false)
                            .currentKeyboardId,
                      ),
                      builder: (
                        BuildContext context,
                        AsyncSnapshot<(List<String>, String, int, int)>
                            snapshot,
                      ) {
                        if (snapshot.hasError) {
                          if (snapshot.error is TransliterationException) {
                            return Text(snapshot.error.toString());
                          }
                          return const Text(TransliterationModel.errorMessage);
                        }
                        if (!snapshot.hasData) {
                          return const Text(defaultMessage);
                        }
                        final (p, w, s, e) = snapshot.data!;
                        return Row(
                          children: <Widget>[
                            for (final prediction in p)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: ClipRect(
                                  child: SizedBox(
                                    height: TransliterationPredictionsView
                                        .minHeight,
                                    child: InkWell(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Text(prediction),
                                      ),
                                      onTap: () {
                                        model.chooseTransliterationPrediction(
                                          prediction,
                                          (w, s, e),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        );
                      });
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
