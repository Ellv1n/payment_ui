import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text.dart';
import '../widget/card_number_input.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_form_field.dart';
import '../widget/decorated_container.dart';
import '../widget/exp_date_cvv.dart';
import '../widget/holder_name_input.dart';
import '../widget/switch.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: const Text(AppTexts.paymentAppBarTitle),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.secondaryColor,
      ),
      body: Form(
        key: _formKey,
        child:  SingleChildScrollView(
          child: Column(
            children: [
               const CardNumberInput(),
               const SizedBox(height: 10),
               const HolderNameInput(),
               const SizedBox(height: 10),
               const ExpirationDateAndCvv(),
               const SizedBox(height: 30),
               const DecoratedContainer(),
               const SizedBox(height: 10,),
               CustomButton(
                buttonText: AppTexts.saveButtonText,
                onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        await Future.delayed(const Duration(seconds: 2));
                        isLoading = false;
                        setState(() {});
                        return;
                      }
                    },
               ),
            ],
          ),
        ),
      ),
    );
  }
}
