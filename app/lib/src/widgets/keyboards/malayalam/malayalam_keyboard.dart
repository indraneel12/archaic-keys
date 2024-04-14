// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'malayalam_key.dart';

export 'malayalam_key.dart';

class MalayalamKeyboard extends StatelessWidget {
  const MalayalamKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      rowSizes: [for (int i = 0; i < 8; i++) 1.fr],
      columnSizes: [for (int i = 0; i < 18; i++) 1.fr],
      rowGap: 0.0,
      columnGap: 0.0,
      children: <Widget>[
        // ------------------------Vowels------------------------
        const MalayalamKey(
          value: 'അ',
          devanagariLabel: 'अ',
          iso15919Label: 'a',
        ).withGridPlacement(rowStart: 0, columnStart: 0),
        const MalayalamKey(
          value: 'ആ',
          devanagariLabel: 'आ',
          iso15919Label: 'ā',
        ).withGridPlacement(rowStart: 0, columnStart: 1),
        const MalayalamKey(
          value: 'ഇ',
          devanagariLabel: 'इ',
          iso15919Label: 'i',
        ).withGridPlacement(rowStart: 0, columnStart: 2),
        const MalayalamKey(
          value: 'ഈ',
          devanagariLabel: 'ई',
          iso15919Label: 'ī',
        ).withGridPlacement(rowStart: 0, columnStart: 3),
        const MalayalamKey(
          value: 'ഉ',
          devanagariLabel: 'उ',
          iso15919Label: 'u',
        ).withGridPlacement(rowStart: 0, columnStart: 4),
        const MalayalamKey(
          value: 'ഊ',
          devanagariLabel: 'ऊ',
          iso15919Label: 'ū',
        ).withGridPlacement(rowStart: 0, columnStart: 5),
        const MalayalamKey(
          value: 'ഋ',
          devanagariLabel: 'ऋ',
          iso15919Label: 'r̥',
        ).withGridPlacement(rowStart: 0, columnStart: 6),
        const MalayalamKey(
          value: 'ൠ',
          devanagariLabel: 'ॠ',
          iso15919Label: 'r̥̄',
        ).withGridPlacement(rowStart: 0, columnStart: 7),
        const MalayalamKey(
          value: 'ഌ',
          devanagariLabel: 'ऌ',
          iso15919Label: 'l̥',
        ).withGridPlacement(rowStart: 0, columnStart: 8),
        const MalayalamKey(
          value: 'ൡ',
          devanagariLabel: 'ॡ',
          iso15919Label: 'l̥̄',
        ).withGridPlacement(rowStart: 0, columnStart: 9),
        const MalayalamKey(
          value: 'എ',
          devanagariLabel: 'ऎ',
          iso15919Label: 'e',
        ).withGridPlacement(rowStart: 0, columnStart: 10),
        const MalayalamKey(
          value: 'ഏ',
          devanagariLabel: 'ए',
          iso15919Label: 'ē',
        ).withGridPlacement(rowStart: 0, columnStart: 11),
        const MalayalamKey(
          value: 'ഐ',
          devanagariLabel: 'ऐ',
          iso15919Label: 'ai',
        ).withGridPlacement(rowStart: 0, columnStart: 12),
        const MalayalamKey(
          value: 'ഒ',
          devanagariLabel: 'ऒ',
          iso15919Label: 'o',
        ).withGridPlacement(rowStart: 0, columnStart: 13),
        const MalayalamKey(
          value: 'ഓ',
          devanagariLabel: 'ओ',
          iso15919Label: 'ō',
        ).withGridPlacement(rowStart: 0, columnStart: 14),
        const MalayalamKey(
          value: 'ഔ',
          devanagariLabel: 'औ',
          iso15919Label: 'au',
        ).withGridPlacement(rowStart: 0, columnStart: 15),
        const MalayalamKey(
          value: 'അം',
          devanagariLabel: 'अं',
          iso15919Label: 'aṁ',
        ).withGridPlacement(rowStart: 0, columnStart: 16),
        const MalayalamKey(
          value: 'അഃ',
          devanagariLabel: 'अः',
          iso15919Label: 'aḥ',
        ).withGridPlacement(rowStart: 0, columnStart: 17),

        // ------------------------Matras------------------------
        const MalayalamKey(
          value: '്',
          devanagariLabel: '्',
          iso15919Label: '◌ɯ̽',
        ).withGridPlacement(rowStart: 1, columnStart: 0),
        const MalayalamKey(
          value: 'ാ',
          devanagariLabel: 'ा',
          iso15919Label: '◌ā	',
        ).withGridPlacement(rowStart: 1, columnStart: 1),
        const MalayalamKey(
          value: 'ി',
          devanagariLabel: 'ि',
          iso15919Label: '◌i',
        ).withGridPlacement(rowStart: 1, columnStart: 2),
        const MalayalamKey(
          value: 'ീ',
          devanagariLabel: 'ी',
          iso15919Label: '◌ī',
        ).withGridPlacement(rowStart: 1, columnStart: 3),
        const MalayalamKey(
          value: 'ു',
          devanagariLabel: 'ु',
          iso15919Label: '◌u',
        ).withGridPlacement(rowStart: 1, columnStart: 4),
        const MalayalamKey(
          value: 'ൂ',
          devanagariLabel: 'ू',
          iso15919Label: '◌ū',
        ).withGridPlacement(rowStart: 1, columnStart: 5),
        const MalayalamKey(
          value: 'ൃ',
          devanagariLabel: 'ृ',
          iso15919Label: '◌r̥',
        ).withGridPlacement(rowStart: 1, columnStart: 6),
        const MalayalamKey(
          value: 'ൄ',
          devanagariLabel: 'ॄ',
          iso15919Label: '◌r̥̄',
        ).withGridPlacement(rowStart: 1, columnStart: 7),
        const MalayalamKey(
          value: 'ൢ',
          devanagariLabel: 'ॢ',
          iso15919Label: '◌l̥',
        ).withGridPlacement(rowStart: 1, columnStart: 8),
        const MalayalamKey(
          value: 'ൣ',
          devanagariLabel: 'ॣ',
          iso15919Label: '◌l̥̄',
        ).withGridPlacement(rowStart: 1, columnStart: 9),
        const MalayalamKey(
          value: 'െ',
          devanagariLabel: 'ॆ',
          iso15919Label: '◌e',
        ).withGridPlacement(rowStart: 1, columnStart: 10),
        const MalayalamKey(
          value: 'േ',
          devanagariLabel: 'े',
          iso15919Label: '◌ē',
        ).withGridPlacement(rowStart: 1, columnStart: 11),
        const MalayalamKey(
          value: 'ൈ',
          devanagariLabel: 'ै',
          iso15919Label: '◌ai',
        ).withGridPlacement(rowStart: 1, columnStart: 12),
        const MalayalamKey(
          value: 'ൊ',
          devanagariLabel: 'ॊ',
          iso15919Label: '◌o',
        ).withGridPlacement(rowStart: 1, columnStart: 13),
        const MalayalamKey(
          value: 'ോ',
          devanagariLabel: 'ो',
          iso15919Label: '◌ō',
        ).withGridPlacement(rowStart: 1, columnStart: 14),
        const MalayalamKey(
          value: 'ൗ',
          devanagariLabel: 'ौ',
          iso15919Label: '◌au',
        ).withGridPlacement(rowStart: 1, columnStart: 15),
        const MalayalamKey(
          value: 'ം',
          devanagariLabel: 'ं',
          iso15919Label: '◌aṁ',
        ).withGridPlacement(rowStart: 1, columnStart: 16),
        const MalayalamKey(
          value: 'ഃ',
          devanagariLabel: 'ः',
          iso15919Label: '◌aḥ',
        ).withGridPlacement(rowStart: 1, columnStart: 17),

        // ------------------------Basic-Consonants------------------------

        // ------------------------Other-Consonants------------------------

        // ------------------------Chillus------------------------

        // ------------------------Common-Ligatures------------------------

        // ------------------------Archaic-Symbols------------------------

        // ------------------------Numpad------------------------

        // ------------------------Punctuators------------------------

        // ------------------------Fractions------------------------
      ],
    );
  }
}
