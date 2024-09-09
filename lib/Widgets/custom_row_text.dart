import 'package:bmi_calculator_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({super.key, required this.text, required this.text1});
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(color: AppColor.SMALL_TEXT_COLOR),
        ),
          Text(
          text1,
          style: TextStyle(color: AppColor.BUTTON_BG_COLOR),
        ),
      ],
    );
  }
}
