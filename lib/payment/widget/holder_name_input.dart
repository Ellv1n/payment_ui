import 'package:flutter/material.dart';
import 'package:payment_ui/constants/app_text.dart';

import 'custom_text_form_field.dart';

class HolderNameInput extends StatelessWidget {
  const HolderNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
              label: AppTexts.holderName,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return AppTexts.validationForHolderName;
                }
                return null;
              },
            );
  }
}