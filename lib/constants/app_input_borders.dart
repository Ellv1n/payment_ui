import 'package:flutter/material.dart';
import 'package:payment_ui/constants/app_colors.dart';

class AppInputBorders {
  AppInputBorders._();

  static final inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.inputBorderColor,
    ),
  );

  static final errorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: AppColors.inputBorderColor,
    ),
  );
}
