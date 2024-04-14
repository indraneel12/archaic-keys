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
        const MalayalamKey(
          value: 'ക',
          devanagariLabel: 'क',
          iso15919Label: 'k',
        ).withGridPlacement(rowStart: 3, columnStart: 0),
        const MalayalamKey(
          value: 'ഖ',
          devanagariLabel: 'ख',
          iso15919Label: 'kh',
        ).withGridPlacement(rowStart: 3, columnStart: 1),
        const MalayalamKey(
          value: 'ഗ',
          devanagariLabel: 'ग',
          iso15919Label: 'g',
        ).withGridPlacement(rowStart: 3, columnStart: 2),
        const MalayalamKey(
          value: 'ഘ',
          devanagariLabel: 'घ',
          iso15919Label: 'gh',
        ).withGridPlacement(rowStart: 3, columnStart: 3),
        const MalayalamKey(
          value: 'ങ',
          devanagariLabel: 'ङ',
          iso15919Label: 'ṅ',
        ).withGridPlacement(rowStart: 3, columnStart: 4),
        const MalayalamKey(
          value: 'ച',
          devanagariLabel: 'च',
          iso15919Label: 'c',
        ).withGridPlacement(rowStart: 4, columnStart: 0),
        const MalayalamKey(
          value: 'ഛ',
          devanagariLabel: 'छ',
          iso15919Label: 'ch',
        ).withGridPlacement(rowStart: 4, columnStart: 1),
        const MalayalamKey(
          value: 'ജ',
          devanagariLabel: 'ज',
          iso15919Label: 'j',
        ).withGridPlacement(rowStart: 4, columnStart: 2),
        const MalayalamKey(
          value: 'ഝ',
          devanagariLabel: 'झ',
          iso15919Label: 'jh',
        ).withGridPlacement(rowStart: 4, columnStart: 3),
        const MalayalamKey(
          value: 'ഞ',
          devanagariLabel: 'ञ',
          iso15919Label: 'ñ',
        ).withGridPlacement(rowStart: 4, columnStart: 4),
        const MalayalamKey(
          value: 'ട',
          devanagariLabel: 'ट',
          iso15919Label: 'ṭ',
        ).withGridPlacement(rowStart: 5, columnStart: 0),
        const MalayalamKey(
          value: 'ഠ',
          devanagariLabel: 'ठ',
          iso15919Label: 'ṭh',
        ).withGridPlacement(rowStart: 5, columnStart: 1),
        const MalayalamKey(
          value: 'ഡ',
          devanagariLabel: 'ड',
          iso15919Label: 'ḍ',
        ).withGridPlacement(rowStart: 5, columnStart: 2),
        const MalayalamKey(
          value: 'ഢ',
          devanagariLabel: 'ढ',
          iso15919Label: 'ḍh',
        ).withGridPlacement(rowStart: 5, columnStart: 3),
        const MalayalamKey(
          value: 'ണ',
          devanagariLabel: 'ण',
          iso15919Label: 'ṇ',
        ).withGridPlacement(rowStart: 5, columnStart: 4),
        const MalayalamKey(
          value: 'ത',
          devanagariLabel: 'त',
          iso15919Label: 't',
        ).withGridPlacement(rowStart: 6, columnStart: 0),
        const MalayalamKey(
          value: 'ഥ',
          devanagariLabel: 'थ',
          iso15919Label: 'th',
        ).withGridPlacement(rowStart: 6, columnStart: 1),
        const MalayalamKey(
          value: 'ദ',
          devanagariLabel: 'द',
          iso15919Label: 'd',
        ).withGridPlacement(rowStart: 6, columnStart: 2),
        const MalayalamKey(
          value: 'ധ',
          devanagariLabel: 'ध',
          iso15919Label: 'dh',
        ).withGridPlacement(rowStart: 6, columnStart: 3),
        const MalayalamKey(
          value: 'ന',
          devanagariLabel: 'न',
          iso15919Label: 'n',
        ).withGridPlacement(rowStart: 6, columnStart: 4),
        const MalayalamKey(
          value: 'പ',
          devanagariLabel: 'प',
          iso15919Label: 'p',
        ).withGridPlacement(rowStart: 7, columnStart: 0),
        const MalayalamKey(
          value: 'ഫ',
          devanagariLabel: 'फ',
          iso15919Label: 'ph',
        ).withGridPlacement(rowStart: 7, columnStart: 1),
        const MalayalamKey(
          value: 'ബ',
          devanagariLabel: 'ब',
          iso15919Label: 'b',
        ).withGridPlacement(rowStart: 7, columnStart: 2),
        const MalayalamKey(
          value: 'ഭ',
          devanagariLabel: 'भ',
          iso15919Label: 'bh',
        ).withGridPlacement(rowStart: 7, columnStart: 3),
        const MalayalamKey(
          value: 'മ',
          devanagariLabel: 'म',
          iso15919Label: 'm',
        ).withGridPlacement(rowStart: 7, columnStart: 4),

        // ------------------------Other-Consonants------------------------
        const MalayalamKey(
          value: 'യ',
          devanagariLabel: 'य',
          iso15919Label: 'y',
        ).withGridPlacement(rowStart: 3, columnStart: 5),
        const MalayalamKey(
          value: 'ര',
          devanagariLabel: 'र',
          iso15919Label: 'r',
        ).withGridPlacement(rowStart: 3, columnStart: 6),
        const MalayalamKey(
          value: 'ല',
          devanagariLabel: 'ल',
          iso15919Label: 'l',
        ).withGridPlacement(rowStart: 3, columnStart: 7),
        const MalayalamKey(
          value: 'വ',
          devanagariLabel: 'व',
          iso15919Label: 'v',
        ).withGridPlacement(rowStart: 3, columnStart: 8),
        const MalayalamKey(
          value: 'ശ',
          devanagariLabel: 'श',
          iso15919Label: 'ś',
        ).withGridPlacement(rowStart: 4, columnStart: 5),
        const MalayalamKey(
          value: 'ഷ',
          devanagariLabel: 'ष',
          iso15919Label: 'ṣ',
        ).withGridPlacement(rowStart: 4, columnStart: 6),
        const MalayalamKey(
          value: 'സ',
          devanagariLabel: 'स',
          iso15919Label: 's',
        ).withGridPlacement(rowStart: 4, columnStart: 7),
        const MalayalamKey(
          value: 'ഹ',
          devanagariLabel: 'ह',
          iso15919Label: 'h',
        ).withGridPlacement(rowStart: 4, columnStart: 8),
        LayoutGrid(
          rowSizes: [1.fr],
          columnSizes: [for (int i = 0; i < 16; i++) 1.fr],
          rowGap: 0.0,
          columnGap: 0.0,
          children: <Widget>[
            const MalayalamKey(
              value: 'ള',
              devanagariLabel: 'ळ',
              iso15919Label: 'ḷ',
            ).withGridPlacement(rowStart: 0, columnStart: 1, columnSpan: 4),
            const MalayalamKey(
              value: 'ഴ',
              devanagariLabel: 'ऴ',
              iso15919Label: 'ḻ',
            ).withGridPlacement(rowStart: 0, columnStart: 6, columnSpan: 4),
            const MalayalamKey(
              value: 'റ',
              devanagariLabel: 'ऱ',
              iso15919Label: 'ṟ',
            ).withGridPlacement(rowStart: 0, columnStart: 11, columnSpan: 4),
          ],
        ).withGridPlacement(rowStart: 5, columnStart: 5, columnSpan: 4),
        const MalayalamKey(
          value: 'ഺ',
          devanagariLabel: 'ट़',
          iso15919Label: 'ṯ',
        ).withGridPlacement(rowStart: 6, columnStart: 6),
        const MalayalamKey(
          value: 'ഩ',
          devanagariLabel: 'ऩ',
          iso15919Label: 'ṉ',
        ).withGridPlacement(rowStart: 6, columnStart: 7),

        // ------------------------Numpad------------------------
        const MalayalamKey(
          value: '൧',
          devanagariLabel: '१',
          iso15919Label: '1',
        ).withGridPlacement(rowStart: 6, columnStart: 9),
        const MalayalamKey(
          value: '൨',
          devanagariLabel: '२',
          iso15919Label: '2',
        ).withGridPlacement(rowStart: 6, columnStart: 10),
        const MalayalamKey(
          value: '൩',
          devanagariLabel: '३',
          iso15919Label: '3',
        ).withGridPlacement(rowStart: 6, columnStart: 11),
        const MalayalamKey(
          value: '൪',
          devanagariLabel: '४',
          iso15919Label: '4',
        ).withGridPlacement(rowStart: 5, columnStart: 9),
        const MalayalamKey(
          value: '൫',
          devanagariLabel: '५',
          iso15919Label: '5',
        ).withGridPlacement(rowStart: 5, columnStart: 10),
        const MalayalamKey(
          value: '൬',
          devanagariLabel: '६',
          iso15919Label: '6',
        ).withGridPlacement(rowStart: 5, columnStart: 11),
        const MalayalamKey(
          value: '൭',
          devanagariLabel: '७',
          iso15919Label: '7',
        ).withGridPlacement(rowStart: 4, columnStart: 9),
        const MalayalamKey(
          value: '൮',
          devanagariLabel: '८',
          iso15919Label: '8',
        ).withGridPlacement(rowStart: 4, columnStart: 10),
        const MalayalamKey(
          value: '൯',
          devanagariLabel: '९',
          iso15919Label: '9',
        ).withGridPlacement(rowStart: 4, columnStart: 11),
        const MalayalamKey(
          value: '൦',
          devanagariLabel: '०',
          iso15919Label: '0',
        ).withGridPlacement(rowStart: 7, columnStart: 10),
        const MalayalamKey(value: '൏')
            .withGridPlacement(rowStart: 7, columnStart: 9),
        const MalayalamKey(value: '൹')
            .withGridPlacement(rowStart: 7, columnStart: 11),

        // ------------------------Chillus------------------------
        const MalayalamKey(value: 'ൿ')
            .withGridPlacement(rowStart: 3, columnStart: 9),
        const MalayalamKey(value: 'ൺ')
            .withGridPlacement(rowStart: 3, columnStart: 10),
        const MalayalamKey(value: 'ൻ')
            .withGridPlacement(rowStart: 3, columnStart: 11),
        const MalayalamKey(value: 'ൔ')
            .withGridPlacement(rowStart: 3, columnStart: 12),
        const MalayalamKey(value: 'ൕ')
            .withGridPlacement(rowStart: 3, columnStart: 13),
        const MalayalamKey(value: 'ൽ')
            .withGridPlacement(rowStart: 3, columnStart: 14),
        const MalayalamKey(value: 'ൾ')
            .withGridPlacement(rowStart: 3, columnStart: 15),
        const MalayalamKey(value: 'ൖ')
            .withGridPlacement(rowStart: 3, columnStart: 16),
        const MalayalamKey(value: 'ർ')
            .withGridPlacement(rowStart: 3, columnStart: 17),

        // ------------------------Archaic-Symbols------------------------
        const MalayalamKey(value: 'ൌ')
            .withGridPlacement(rowStart: 6, columnStart: 5),
        const MalayalamKey(value: 'ഀ')
            .withGridPlacement(rowStart: 6, columnStart: 8),
        const MalayalamKey(value: 'ൎ')
            .withGridPlacement(rowStart: 7, columnStart: 5),
        const MalayalamKey(value: 'ൟ')
            .withGridPlacement(rowStart: 7, columnStart: 6),
        const MalayalamKey(value: 'ഄ')
            .withGridPlacement(rowStart: 7, columnStart: 7),
        const MalayalamKey(value: 'ഁ')
            .withGridPlacement(rowStart: 7, columnStart: 8),

        // ------------------------Misc-Symbols------------------------
        const MalayalamKey(value: '഻')
            .withGridPlacement(rowStart: 4, columnStart: 12, columnSpan: 2),
        const MalayalamKey(value: '഼')
            .withGridPlacement(rowStart: 5, columnStart: 12, columnSpan: 2),
        const MalayalamKey(value: 'ഽ')
            .withGridPlacement(rowStart: 6, columnStart: 12, columnSpan: 2),
        const MalayalamKey(value: '।')
            .withGridPlacement(rowStart: 7, columnStart: 12),
        const MalayalamKey(value: '॥')
            .withGridPlacement(rowStart: 7, columnStart: 13),

        // ------------------------Fractions------------------------
        const MalayalamKey(value: '൘')
            .withGridPlacement(rowStart: 4, columnStart: 14),
        const MalayalamKey(value: '൙')
            .withGridPlacement(rowStart: 4, columnStart: 15),
        const MalayalamKey(value: '൚')
            .withGridPlacement(rowStart: 4, columnStart: 16),
        const MalayalamKey(value: '൛')
            .withGridPlacement(rowStart: 4, columnStart: 17),
        const MalayalamKey(value: '൶')
            .withGridPlacement(rowStart: 5, columnStart: 14),
        const MalayalamKey(value: '൜')
            .withGridPlacement(rowStart: 5, columnStart: 15),
        const MalayalamKey(value: '൷')
            .withGridPlacement(rowStart: 5, columnStart: 16),
        const MalayalamKey(value: '൝')
            .withGridPlacement(rowStart: 5, columnStart: 17),
        const MalayalamKey(value: '൸')
            .withGridPlacement(rowStart: 6, columnStart: 14),
        const MalayalamKey(value: '൞')
            .withGridPlacement(rowStart: 6, columnStart: 15),
        const MalayalamKey(value: '൳')
            .withGridPlacement(rowStart: 6, columnStart: 16),
        const MalayalamKey(value: '൴')
            .withGridPlacement(rowStart: 6, columnStart: 17),
        const MalayalamKey(value: '൵')
            .withGridPlacement(rowStart: 7, columnStart: 14),
        const MalayalamKey(value: '൰')
            .withGridPlacement(rowStart: 7, columnStart: 15),
        const MalayalamKey(value: '൱')
            .withGridPlacement(rowStart: 7, columnStart: 16),
        const MalayalamKey(value: '൲')
            .withGridPlacement(rowStart: 7, columnStart: 17),

        // ------------------------Common-Ligatures------------------------
      ],
    );
  }
}
