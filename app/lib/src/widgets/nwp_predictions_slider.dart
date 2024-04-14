// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';
import 'package:app/src/models/models.dart';

class NwpPredictionsSlider extends StatefulWidget {
  const NwpPredictionsSlider({super.key});

  @override
  State<NwpPredictionsSlider> createState() => _NwpPredictionsSliderState();
}

class _NwpPredictionsSliderState extends State<NwpPredictionsSlider> {
  static const minValue = FeatureConstraints.minNwpPredictions;
  static const maxValue = FeatureConstraints.maxNwpPredictions;

  final List<int> values = [for (int i = minValue; i <= maxValue; i++) i];

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _selectedIndex.toDouble(),
      min: 0,
      max: values.length - 1,
      divisions: values.length - 1,
      label: values[_selectedIndex].toString(),
      onChanged: (double value) {
        final updatedCount = value.toInt();
        setState(() {
          _selectedIndex = updatedCount;
        });
        Provider.of<TextModel>(context, listen: false)
            .updateNwpPredictionsCount(updatedCount);
      },
    );
  }
}
