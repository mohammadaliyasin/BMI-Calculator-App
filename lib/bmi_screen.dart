import 'package:bmi_calculator_app/Widgets/Custom_Box.dart';
import 'package:bmi_calculator_app/Widgets/custom_button.dart';
import 'package:bmi_calculator_app/bmi_result_screen.dart';
import 'package:bmi_calculator_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 0;
  double weight = 0;

  void onTapAddHeight() {
    setState(() {
      height++;
    });
  }

  void onTapMinusHeight() {
    setState(() {
      if (height > 0) height--;
    });
  }

  void onTapAddWeight() {
    setState(() {
      weight++;
    });
  }

  void onTapMinusWeight() {
    setState(() {
      if (weight > 0) weight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BG_COLOR,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(12.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  children: [
                    Text(
                      "BMI Calculator",
                      style: TextStyle(
                        color: AppColor.TEXT_COLOR,
                        fontSize: 32.sp,
                      ),
                    ),
                    Icon(Icons.info_outline,
                        color: AppColor.SMALL_TEXT_COLOR, size: 15.sp),
                  ],
                ),
                 Text(
                  "Body Mass Index",
                  style: TextStyle(
                    color: AppColor.SMALL_TEXT_COLOR,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomBox(
                  icon: Icons.height_rounded,
                  btext: 'Height',
                  stext: 'cm',
                  stext1: '.ft',
                  value: '$height',
                  onTapAdd: onTapAddHeight,
                  onTapMinus: onTapMinusHeight,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomBox(
                  icon: Icons.speed_outlined,
                  btext: 'Weight',
                  stext: 'kg',
                  stext1: '.lb',
                  value: '$weight',
                  onTapAdd: onTapAddWeight,
                  onTapMinus: onTapMinusWeight,
                ),
                SizedBox(
                  height: 40.sp,
                ),
                Center(
                  child: CustomButton(
                    text: 'Calculate',
                    height: 50.h,
                    width: 180.w,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmiResultScreen(
                                  weight: weight, height: height)));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
