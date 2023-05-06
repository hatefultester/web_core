import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

mixin CustomKeyboardHandlerMixin {

  void onKeyboardKeyPressed(RawKeyEventData rawKeyEventData) {
    String keyLabel = rawKeyEventData.keyLabel;

    if (rawKeyEventData.logicalKey == LogicalKeyboardKey.enter || rawKeyEventData.logicalKey == LogicalKeyboardKey.numpadEnter) {
      handleKeyboardEnterKeyPressed();
    } else if (rawKeyEventData.logicalKey == LogicalKeyboardKey.escape) {
      handleKeyboardEscapeKeyPressed();
    } else if (rawKeyEventData.logicalKey == LogicalKeyboardKey.backspace) {
      handleKeyboardBackspaceKeyPressed();
    }
    else {
      int? number = int.tryParse(keyLabel);
      if (number != null && number >= 0 && number <= 9) {
        handleKeyboardNumberKeyPressed(number);
      } else {
        handleKeyboardKeyPressed(keyLabel);
      }
    }
  }

  void handleKeyboardEnterKeyPressed() {
    debugPrint('enter was tapped');
  }

  void handleKeyboardEscapeKeyPressed() {
    debugPrint('escape was tapped');
  }

  void handleKeyboardNumberKeyPressed(int number) {
    debugPrint('number was tapped $number');
  }

  void handleKeyboardKeyPressed(String keyLabel) {
    debugPrint('key was tapped $keyLabel');
  }

  void handleKeyboardBackspaceKeyPressed() {
    debugPrint('key backspace was tapped');
  }
}