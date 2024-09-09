import 'package:bmi_calculator_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    in
    required this.text,
    this.buttonColor = AppColor.BUTTON_BG_COLOR,
    this.textColor = AppColor.BUTTON_FG_COLOR, 
    required this.height, 
    required this.width,
    super.key
  });
  final double height;
  final double width;
  final onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
          foregroundColor: MaterialStatePropertyAll(textColor),
          textStyle: MaterialStateProperty.all(TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)),
        ),
        onPressed: onPressed,
        child: Text(text),
      
      ),
    );
  }
}


