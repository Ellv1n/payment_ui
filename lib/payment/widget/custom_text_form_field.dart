import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_input_borders.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.isObscure = false,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
  }) : maxLength = null;

  const CustomTextFormField.cardNumber({
    super.key,
    required this.label,
    this.keyboardType,
    this.isObscure = false,
    this.validator,
    this.maxLength = 16,
    this.inputFormatters,
  });

  const CustomTextFormField.cvv({
    super.key,
    required this.label,
    this.keyboardType,
    this.isObscure = true,
    this.validator,
    this.maxLength = 3,
    this.inputFormatters,
  });

  const CustomTextFormField.expDate({
    super.key,
    required this.label,
    this.keyboardType,
    this.isObscure = false,
    this.validator,
    this.maxLength = 5,
    this.inputFormatters,
  });

  final String label;
  final TextInputType? keyboardType;
  final bool isObscure;
  final String? Function(String?)? validator;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: AppColors.headerColor, fontSize: 18),
        ),
        TextFormField(
          style: const TextStyle(color: Colors.white),
          inputFormatters: inputFormatters,
          obscureText: isObscure,
          validator: validator,
          keyboardType: keyboardType,
          maxLength: maxLength,
          decoration: InputDecoration(
            fillColor: AppColors.inputFillColor,
            filled: true,
            border: AppInputBorders.inputBorder,
            errorBorder: AppInputBorders.errorInputBorder,
            enabledBorder: AppInputBorders.inputBorder,
            focusedErrorBorder: AppInputBorders.errorInputBorder,
            focusedBorder: AppInputBorders.inputBorder,
            counterText: '',
            hintStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
