import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _switchKey = true;
  @override
  Widget build(BuildContext context) {
    return  Switch(
      value: _switchKey,
      activeColor: AppColors.switchPrimaryColor,
      activeTrackColor: AppColors.switchSecondaryColor,
      inactiveTrackColor: AppColors.switchSecondaryColor,
      inactiveThumbColor: AppColors.switchPrimaryColor,
      trackOutlineColor: const MaterialStatePropertyAll(
        AppColors.switchBorderColor,
      ),
      onChanged: (bool value) {
        setState(() {
          _switchKey = value;
        });
      },
    );
  }
}



