// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:flutter/material.dart' show Icons;

const copyright = '''BSD 3-Clause License

Copyright (c) 2024, Indraneel Rajeevan
Copyright (c) 2024, Deepen Shrestha

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

''';

abstract class AppMeta {
  static const name = 'Archaic Keys';
  static const version = '1.0.0+1';
  static const icon = Icons.diversity_2;
  static const authorsImagePath = 'assets/images/authors.jpg';
}

abstract class AppDimensions {
  static const minWidth = 300.0;
  static const minHeight = 300.0;
  static const maxWidth = 1500.0;
  static const maxHeight = 700.0;
}

abstract class CustomFonts {
  static const chivoMono = 'ChivoMono';
  static const sixtyfour = 'Sixtyfour';
}

abstract class LicensePaths {
  static const chivoMono = 'assets/fonts/Chivo_Mono/OFL.txt';
  static const sixtyfour = 'assets/fonts/Sixtyfour/OFL.txt';
}
