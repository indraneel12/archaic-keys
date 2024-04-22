// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart';

import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'nepali_key.dart';

export 'nepali_key.dart';

class NepaliKeyboard extends StatelessWidget {
  const NepaliKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      rowSizes: [for (int i = 0; i < 6; i++) 1.fr],
      columnSizes: [for (int i = 0; i < 13; i++) 1.fr],
      rowGap: 0.0,
      columnGap: 0.0,
      children: <Widget>[
        // ------------------------Numbers------------------------
        LayoutGrid(
          rowSizes: [for (int i = 0; i < 1; i++) 1.fr],
          columnSizes: [for (int i = 0; i < 10; i++) 1.fr],
          rowGap: 0.0,
          columnGap: 0.0,
          children: <Widget>[
            const NepaliKey(
              value: '𑑑',
              devanagariLabel: '१',
              romanLabel: '1',
            ).withGridPlacement(rowStart: 0, columnStart: 0),
            const NepaliKey(
              value: '𑑒',
              devanagariLabel: '२',
              romanLabel: '2',
            ).withGridPlacement(rowStart: 0, columnStart: 1),
            const NepaliKey(
              value: '𑑓',
              devanagariLabel: '३',
              romanLabel: '3',
            ).withGridPlacement(rowStart: 0, columnStart: 2),
            const NepaliKey(
              value: '𑑔',
              devanagariLabel: '४',
              romanLabel: '4',
            ).withGridPlacement(rowStart: 0, columnStart: 3),
            const NepaliKey(
              value: '𑑕',
              devanagariLabel: '५',
              romanLabel: '5',
            ).withGridPlacement(rowStart: 0, columnStart: 4),
            const NepaliKey(
              value: '𑑖',
              devanagariLabel: '६',
              romanLabel: '6',
            ).withGridPlacement(rowStart: 0, columnStart: 5),
            const NepaliKey(
              value: '𑑗',
              devanagariLabel: '७',
              romanLabel: '7',
            ).withGridPlacement(rowStart: 0, columnStart: 6),
            const NepaliKey(
              value: '𑑘',
              devanagariLabel: '८',
              romanLabel: '8',
            ).withGridPlacement(rowStart: 0, columnStart: 7),
            const NepaliKey(
              value: '𑑙',
              devanagariLabel: '९',
              romanLabel: '9',
            ).withGridPlacement(rowStart: 0, columnStart: 8),
            const NepaliKey(
              value: '𑑐',
              devanagariLabel: '०',
              romanLabel: '0',
            ).withGridPlacement(rowStart: 0, columnStart: 9),
          ],
        ).withGridPlacement(rowStart: 0, columnStart: 0, columnSpan: 13),

        // ------------------------Matras------------------------
        const NepaliKey(
          value: '𑐵',
          devanagariLabel: 'ा',
        ).withGridPlacement(rowStart: 1, columnStart: 0),
        const NepaliKey(
          value: '𑐶',
          devanagariLabel: 'ि',
        ).withGridPlacement(rowStart: 1, columnStart: 1),
        const NepaliKey(
          value: '𑐷',
          devanagariLabel: 'ी',
        ).withGridPlacement(rowStart: 1, columnStart: 2),
        const NepaliKey(
          value: '𑐸',
          devanagariLabel: 'ु',
        ).withGridPlacement(rowStart: 1, columnStart: 3),
        const NepaliKey(
          value: '𑐹',
          devanagariLabel: 'ू',
        ).withGridPlacement(rowStart: 1, columnStart: 4),
        const NepaliKey(
          value: '𑐺',
          devanagariLabel: 'ृ',
        ).withGridPlacement(rowStart: 1, columnStart: 5),
        const NepaliKey(
          value: '𑐾',
          devanagariLabel: 'े',
        ).withGridPlacement(rowStart: 1, columnStart: 6),
        const NepaliKey(
          value: '𑐿',
          devanagariLabel: 'ै',
        ).withGridPlacement(rowStart: 1, columnStart: 7),
        const NepaliKey(
          value: '𑑀',
          devanagariLabel: 'ो',
        ).withGridPlacement(rowStart: 1, columnStart: 8),
        const NepaliKey(
          value: '𑑁',
          devanagariLabel: 'ौ',
        ).withGridPlacement(rowStart: 1, columnStart: 9),
        const NepaliKey(
          value: '𑑃',
          devanagariLabel: 'ँ',
        ).withGridPlacement(rowStart: 1, columnStart: 10),
        const NepaliKey(value: 'ॉ')
            .withGridPlacement(rowStart: 1, columnStart: 11),
        const NepaliKey(
          value: '𑑄',
          devanagariLabel: 'ं',
        ).withGridPlacement(rowStart: 1, columnStart: 12),

        // ------------------------Vowels------------------------
        LayoutGrid(
          rowSizes: [for (int i = 0; i < 1; i++) 1.fr],
          columnSizes: [for (int i = 0; i < 14; i++) 1.fr],
          rowGap: 0.0,
          columnGap: 0.0,
          children: <Widget>[
            const NepaliKey(
              value: '𑐀',
              devanagariLabel: 'अ',
              romanLabel: 'a',
            ).withGridPlacement(rowStart: 0, columnStart: 0),
            const NepaliKey(
              value: '𑐁',
              devanagariLabel: 'आ',
              romanLabel: 'ā',
            ).withGridPlacement(rowStart: 0, columnStart: 1),
            const NepaliKey(
              value: '𑐂',
              devanagariLabel: 'इ',
              romanLabel: 'i',
            ).withGridPlacement(rowStart: 0, columnStart: 2),
            const NepaliKey(
              value: '𑐃',
              devanagariLabel: 'ई',
              romanLabel: 'ī',
            ).withGridPlacement(rowStart: 0, columnStart: 3),
            const NepaliKey(
              value: '𑐄',
              devanagariLabel: 'उ',
              romanLabel: 'u',
            ).withGridPlacement(rowStart: 0, columnStart: 4),
            const NepaliKey(
              value: '𑐅',
              devanagariLabel: 'ऊ',
              romanLabel: 'ū',
            ).withGridPlacement(rowStart: 0, columnStart: 5),
            const NepaliKey(
              value: '𑐆',
              devanagariLabel: 'ऋ',
              romanLabel: 'ṛ',
            ).withGridPlacement(rowStart: 0, columnStart: 6),
            const NepaliKey(
              value: '𑐊',
              devanagariLabel: 'ए',
              romanLabel: 'ē',
            ).withGridPlacement(rowStart: 0, columnStart: 7),
            const NepaliKey(
              value: '𑐋',
              devanagariLabel: 'ऐ',
              romanLabel: 'ai',
            ).withGridPlacement(rowStart: 0, columnStart: 8),
            const NepaliKey(
              value: '𑐌',
              devanagariLabel: 'ओ',
              romanLabel: 'o',
            ).withGridPlacement(rowStart: 0, columnStart: 9),
            const NepaliKey(
              value: '𑐍',
              devanagariLabel: 'औ',
              romanLabel: 'au',
            ).withGridPlacement(rowStart: 0, columnStart: 10),
            const NepaliKey(
              value: '𑐀𑑄',
              devanagariLabel: 'अं',
              romanLabel: 'aṃ',
            ).withGridPlacement(rowStart: 0, columnStart: 11),
            const NepaliKey(
              value: '𑐀𑑃',
              devanagariLabel: 'अँ',
              romanLabel: 'am̐',
            ).withGridPlacement(rowStart: 0, columnStart: 12),
            const NepaliKey(
              value: '𑐀𑑅',
              devanagariLabel: 'अः',
              romanLabel: 'aḥ',
            ).withGridPlacement(rowStart: 0, columnStart: 13),
          ],
        ).withGridPlacement(rowStart: 2, columnStart: 0, columnSpan: 13),

        // ------------------------Consonants------------------------
        const NepaliKey(
          value: '𑐎',
          devanagariLabel: 'क',
          romanLabel: 'ka',
        ).withGridPlacement(rowStart: 4, columnStart: 0),
        const NepaliKey(
          value: '𑐏',
          devanagariLabel: 'ख',
          romanLabel: 'kha',
        ).withGridPlacement(rowStart: 4, columnStart: 1),
        const NepaliKey(
          value: '𑐐',
          devanagariLabel: 'ग',
          romanLabel: 'ga',
        ).withGridPlacement(rowStart: 4, columnStart: 2),
        const NepaliKey(
          value: '𑐑',
          devanagariLabel: 'घ',
          romanLabel: 'gha',
        ).withGridPlacement(rowStart: 4, columnStart: 3),
        const NepaliKey(
          value: '𑐒',
          devanagariLabel: 'ङ',
          romanLabel: 'ṅa',
        ).withGridPlacement(rowStart: 4, columnStart: 4),
        const NepaliKey(
          value: '𑐔',
          devanagariLabel: 'च',
          romanLabel: 'ca',
        ).withGridPlacement(rowStart: 4, columnStart: 5),
        const NepaliKey(
          value: '𑐕',
          devanagariLabel: 'छ',
          romanLabel: 'cha',
        ).withGridPlacement(rowStart: 4, columnStart: 6),
        const NepaliKey(
          value: '𑐖',
          devanagariLabel: 'ज',
          romanLabel: 'ja',
        ).withGridPlacement(rowStart: 4, columnStart: 7),
        const NepaliKey(
          value: '𑐗',
          devanagariLabel: 'झ',
          romanLabel: 'jha',
        ).withGridPlacement(rowStart: 4, columnStart: 8),
        const NepaliKey(
          value: '𑐘',
          devanagariLabel: 'ञ',
          romanLabel: 'ña',
        ).withGridPlacement(rowStart: 4, columnStart: 9),
        const NepaliKey(
          value: '𑐚',
          devanagariLabel: 'ट',
          romanLabel: 'ṭa',
        ).withGridPlacement(rowStart: 3, columnStart: 0),
        const NepaliKey(
          value: '𑐛',
          devanagariLabel: 'ठ',
          romanLabel: 'ṭha',
        ).withGridPlacement(rowStart: 3, columnStart: 1),
        const NepaliKey(
          value: '𑐜',
          devanagariLabel: 'ड',
          romanLabel: 'ḍa',
        ).withGridPlacement(rowStart: 3, columnStart: 2),
        const NepaliKey(
          value: '𑐝',
          devanagariLabel: 'ढ',
          romanLabel: 'ḍha',
        ).withGridPlacement(rowStart: 3, columnStart: 3),
        const NepaliKey(
          value: '𑐞',
          devanagariLabel: 'ण',
          romanLabel: 'ṇa',
        ).withGridPlacement(rowStart: 3, columnStart: 4),
        const NepaliKey(
          value: '𑐟',
          devanagariLabel: 'त',
          romanLabel: 'ta',
        ).withGridPlacement(rowStart: 3, columnStart: 5),
        const NepaliKey(
          value: '𑐠',
          devanagariLabel: 'थ',
          romanLabel: 'tha',
        ).withGridPlacement(rowStart: 3, columnStart: 6),
        const NepaliKey(
          value: '𑐡',
          devanagariLabel: 'द',
          romanLabel: 'da',
        ).withGridPlacement(rowStart: 3, columnStart: 7),
        const NepaliKey(
          value: '𑐢',
          devanagariLabel: 'ध',
          romanLabel: 'dha',
        ).withGridPlacement(rowStart: 3, columnStart: 8),
        const NepaliKey(
          value: '𑐣',
          devanagariLabel: 'न',
          romanLabel: 'na',
        ).withGridPlacement(rowStart: 3, columnStart: 9),
        const NepaliKey(
          value: '𑐥',
          devanagariLabel: 'प',
          romanLabel: 'pa',
        ).withGridPlacement(rowStart: 3, columnStart: 10),
        const NepaliKey(
          value: '𑐦',
          devanagariLabel: 'फ',
          romanLabel: 'pha',
        ).withGridPlacement(rowStart: 3, columnStart: 11),
        const NepaliKey(
          value: '𑐧',
          devanagariLabel: 'ब',
          romanLabel: 'ba',
        ).withGridPlacement(rowStart: 3, columnStart: 12),
        const NepaliKey(
          value: '𑐨',
          devanagariLabel: 'भ',
          romanLabel: 'bha',
        ).withGridPlacement(rowStart: 5, columnStart: 0),
        const NepaliKey(
          value: '𑐩',
          devanagariLabel: 'म',
          romanLabel: 'ma',
        ).withGridPlacement(rowStart: 5, columnStart: 1),
        const NepaliKey(
          value: '𑐫',
          devanagariLabel: 'य',
          romanLabel: 'ya',
        ).withGridPlacement(rowStart: 5, columnStart: 2),
        const NepaliKey(
          value: '𑐬',
          devanagariLabel: 'र',
          romanLabel: 'ra',
        ).withGridPlacement(rowStart: 5, columnStart: 3),
        const NepaliKey(
          value: '𑐮',
          devanagariLabel: 'ल',
          romanLabel: 'la',
        ).withGridPlacement(rowStart: 5, columnStart: 4),
        const NepaliKey(
          value: '𑐰',
          devanagariLabel: 'व',
          romanLabel: 'va',
        ).withGridPlacement(rowStart: 5, columnStart: 5),
        const NepaliKey(
          value: '𑐱',
          devanagariLabel: 'श',
          romanLabel: 'śa',
        ).withGridPlacement(rowStart: 5, columnStart: 6),
        const NepaliKey(
          value: '𑐲',
          devanagariLabel: 'ष',
          romanLabel: 'ṣa',
        ).withGridPlacement(rowStart: 5, columnStart: 7),
        const NepaliKey(
          value: '𑐳',
          devanagariLabel: 'स',
          romanLabel: 'sa',
        ).withGridPlacement(rowStart: 5, columnStart: 8),
        const NepaliKey(
          value: '𑐴',
          devanagariLabel: 'ह',
          romanLabel: 'ha',
        ).withGridPlacement(rowStart: 5, columnStart: 9),
        const NepaliKey(
          value: 'क्ष',
          devanagariLabel: 'क्ष',
          romanLabel: 'kṣa',
        ).withGridPlacement(rowStart: 5, columnStart: 10),
        const NepaliKey(
          value: 'त्र',
          devanagariLabel: 'त्र',
          romanLabel: 'tra',
        ).withGridPlacement(rowStart: 5, columnStart: 11),
        const NepaliKey(
          value: 'ज्ञ',
          devanagariLabel: 'ञ',
          romanLabel: 'jña',
        ).withGridPlacement(rowStart: 5, columnStart: 12),

        // ------------------------Miscellaneous------------------------
        const NepaliKey(
          value: '𑑋',
          devanagariLabel: '।',
          romanLabel: '.',
        ).withGridPlacement(rowStart: 4, columnStart: 10, columnSpan: 3),
      ],
    );
  }
}
