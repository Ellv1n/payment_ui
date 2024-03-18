import 'package:flutter/material.dart';

import '../../constants/app_text.dart';
import 'custom_text_form_field.dart';

class CardNumberInput extends StatelessWidget {
  const CardNumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField.cardNumber(
      label: AppTexts.cardNumber,
      keyboardType: TextInputType.numberWithOptions(),
      validator: (v) {
        if (v == null || v.isEmpty) {
          return AppTexts.validationForCardNumber;
        }
        return null;
      },
    );
  }
}
