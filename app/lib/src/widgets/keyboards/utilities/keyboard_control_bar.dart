// Copyright (c) 2024, Indraneel Rajeevan
// Copyright (c) 2024, Deepen Shrestha
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:app/src/constants/constants.dart';
import 'package:app/src/models/models.dart';

import 'key_button.dart';
import 'nwp_predictions_view.dart';
import 'unicode_text_field.dart';

class KeyboardControlBar extends StatelessWidget {
  static const minHeight = 16.0;
  static const maxHeight = double.infinity;

  const KeyboardControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 30,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: KeyButton(
                    label: 'Toggle Voice Typing',
                    thumbnail: const Icon(Icons.keyboard_voice),
                    isToggle: true,
                    activeColor: Colors.blue,
                    onPressed: () =>
                        Provider.of<VoiceTypingModel>(context, listen: false)
                            .toggleVoiceTyping(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: KeyButton(
                    label: 'Shift',
                    fontFamily: CustomFonts.chivoMono,
                    isToggle: true,
                    activeColor: Colors.blue,
                    onPressed: () =>
                        Provider.of<ShiftKeyModel>(context, listen: false)
                            .toggleVirtualShiftKey(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: KeyButton(
                    label: ' Alt ',
                    fontFamily: CustomFonts.chivoMono,
                    isToggle: true,
                    activeColor: Colors.blue,
                    onPressed: () =>
                        Provider.of<AltKeyModel>(context, listen: false)
                            .toggleVirtualAltKey(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: KeyButton(
                    label: 'Ctrl ',
                    fontFamily: CustomFonts.chivoMono,
                    isToggle: true,
                    activeColor: Colors.blue,
                    onPressed: () =>
                        Provider.of<CtrlKeyModel>(context, listen: false)
                            .toggleVirtualCtrlKey(),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Expanded(flex: 1, child: Center()),
        Consumer<UnicodeTextFieldModel>(
          builder: (context, model, child) {
            if (model.isUnicodeTextFieldVisible) {
              return const Expanded(
                flex: 46,
                child: NwpPredictionsView(),
              );
            }
            return const Spacer();
          },
        ),
        Consumer<UnicodeTextFieldModel>(
          builder: (context, model, child) {
            if (model.isUnicodeTextFieldVisible) {
              return const Expanded(flex: 2, child: Center());
            }
            return const Expanded(
              flex: 68,
              child: NwpPredictionsView(alignment: Alignment.centerRight),
            );
          },
        ),
        Consumer<UnicodeTextFieldModel>(
          builder: (context, model, child) {
            if (model.isUnicodeTextFieldVisible) {
              return Expanded(
                flex: 21,
                child: UnicodeTextField(),
              );
            }
            return const Center();
          },
        ),
      ],
    );
  }
}
