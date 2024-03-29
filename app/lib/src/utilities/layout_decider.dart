// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart' show BuildContext, MediaQuery;

class LayoutDecider {
  static const phone = LayoutDecider(1);
  static const desktop = LayoutDecider(2);

  final int value;

  const LayoutDecider(this.value);

  factory LayoutDecider.from(BuildContext context) {
    return (MediaQuery.sizeOf(context).width < 750.0) ? phone : desktop;
  }
}
