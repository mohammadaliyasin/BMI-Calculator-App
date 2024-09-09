import 'package:bmi_calculator_app/Widgets/custom_row_text.dart';
import 'package:bmi_calculator_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiResultScreen extends StatelessWidget {
  final double weight;
  final double height;

  const BmiResultScreen({
    Key? key,
    required this.weight,
    required this.height,
  }) : super(key: key);

  double calculateBMI(double weight, double height) {
    return (weight / (height * height)) * 10000;
  }

  String getResult(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    double bmi = calculateBMI(weight, height);
    String result = getResult(bmi);

    return Scaffold(
      backgroundColor: AppColor.BG_COLOR,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColor.TEXT_COLOR),
        backgroundColor: AppColor.BG_COLOR,
        title: Text(
          'BMI Result',
          style: TextStyle(
              color: AppColor.TEXT_COLOR,
              fontSize: 24.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Icon(Icons.pie_chart_rounded,size: 200,color: AppColor.SMALL_TEXT_COLOR,),
                Text(
                  '${bmi.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 60.sp,color: AppColor.BUTTON_BG_COLOR),
                ),
                Text(
                  'Kg/m²',
                  style: TextStyle(fontSize: 24.sp,color: AppColor.SMALL_TEXT_COLOR),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              'Your BMI is: ',
              style: TextStyle(fontSize: 20.sp,color: AppColor.SMALL_TEXT_COLOR,
            ),
                ),
                Text(
                  '$result',
                  style: TextStyle(fontSize: 20.sp,color: AppColor.BUTTON_BG_COLOR),
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180.sp,
                width: double.infinity.sp,
                decoration: BoxDecoration(
                  color: AppColor.BOX_COLOR,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomRowText(text: 'Healthy BMI range:', text1: '18.5kg/m² - 25kg/m²'),
                      CustomRowText(text: 'Healthy weight for height:', text1: '59.9kg/m² - 81kg/m²'),
                      CustomRowText(text: 'Healthy BMI range:', text1: '18.5kg/m² - 25kg/m²'),
                      CustomRowText(text: 'Healthy BMI range:', text1: '18.5kg/m² - 25kg/m²'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}