import 'package:flutter/material.dart';
import 'package:payment_ui/constants/app_text.dart';

import '../../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.switchPrimaryColor,
          foregroundColor: AppColors.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: const Text(AppTexts.saveButtonText),),);
  }
}



