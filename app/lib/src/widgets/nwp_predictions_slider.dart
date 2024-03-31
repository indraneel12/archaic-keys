// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:app/src/constants.dart';

class NwpPredictionsSlider extends StatefulWidget {
  const NwpPredictionsSlider({super.key});

  @override
  State<NwpPredictionsSlider> createState() => _NwpPredictionsSliderState();
}

class _NwpPredictionsSliderState extends State<NwpPredictionsSlider> {
  static const minValue = ImplementationConstraints.minNwpPredictions;
  static const maxValue = ImplementationConstraints.maxNwpPredictions;

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
        setState(() {
          _selectedIndex = value.toInt();
        });
        // TODO: use value from NwpPredictionsSlider
      },
    );
  }
}
