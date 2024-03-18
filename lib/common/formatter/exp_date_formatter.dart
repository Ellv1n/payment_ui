import 'package:flutter/services.dart';

class ExpirationDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.replaceAll(RegExp(r'\D'), ''); // Remove non-digits

    if (newText.length <= 3) {
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    } else if (newText.length <= 5) {
      final formattedText = '${newText.substring(0, 2)}/${newText.substring(2)}';
      return TextEditingValue(
        text: formattedText,
        selection: TextSelection.collapsed(offset: formattedText.length),
      );
    } else {
      final formattedText = '${newText.substring(0, 2)}/${newText.substring(3, 4)}';
      return TextEditingValue(
        text: formattedText,
        selection: TextSelection.collapsed(offset: formattedText.length),
      );
    }
  }
}
