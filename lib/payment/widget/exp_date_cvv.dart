import 'package:flutter/material.dart';
import 'package:payment_ui/constants/app_text.dart';

import '../../common/formatter/exp_date_formatter.dart';
import 'custom_text_form_field.dart';

class ExpirationDateAndCvv extends StatelessWidget {
  const ExpirationDateAndCvv({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomTextFormField.expDate(
                    label: AppTexts.expirationDate,
                    keyboardType: TextInputType.datetime,
                    inputFormatters: [ExpirationDateInputFormatter()],
                    validator: (v){
                       if (v == null || v.isEmpty) {
                  return AppTexts.validationForExpirationDate;
                }
                return null;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: CustomTextFormField.cvv(
                    label: AppTexts.cvv,
                    validator: (v){
                       if (v == null || v.isEmpty) {
                  return AppTexts.validationForCVV;
                }
                return null;
                    },
                  ),
                ),
              ],
            );
  }
}