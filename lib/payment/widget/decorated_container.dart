import 'package:flutter/material.dart';
import 'package:payment_ui/constants/app_text.dart';
import 'package:payment_ui/payment/widget/switch.dart';

import '../../constants/app_colors.dart';

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.inputBorderColor,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding:
                     EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      AppTexts.savePaymentInfo,
                      style: TextStyle(
                        color: AppColors.headerColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                 SwitchWidget()
                  ],
                ),
              ),
            );
  }
}