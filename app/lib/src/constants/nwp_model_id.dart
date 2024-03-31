// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

class NwpModelId {
  // TODO: add NWP Models (potentially plugins)
  static const dummy = NwpModelId._(0);

  const NwpModelId._(this.id);
  final int id;
}
