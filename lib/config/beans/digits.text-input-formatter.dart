import 'package:flutter/services.dart';

class DigitTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    final newText = _formatCode(text);
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  String _formatCode(String input) {
    input = input.replaceAll(RegExp(r'[^0-9]'), ''); // Remove non-digits
    if (input.length > 4) {
      input = input.substring(0, 4); // Limit to 4 characters
    }
    var buffer = StringBuffer();
    for (int i = 0; i < input.length; i++) {
      buffer.write(input[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 1 == 0 && nonZeroIndex != input.length) {
        buffer.write(' - '); // Add double spaces.
      }
    }
    return buffer.toString();
  }
}
