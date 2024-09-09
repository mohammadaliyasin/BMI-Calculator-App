import 'package:bmi_calculator_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({
    Key? key,
    this.icon,
    required this.btext,
    required this.stext,
    required this.stext1,
    required this.value,
    required this.onTapAdd,
    required this.onTapMinus,
  }) : super(key: key);

  final IconData? icon;
  final String btext;
  final String stext;
  final String stext1;
  final String value;
  final VoidCallback onTapAdd;
  final VoidCallback onTapMinus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
            color: AppColor.BOX_COLOR, borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 50,
                    color: AppColor.SMALL_TEXT_COLOR,
                  ),
                  Text(
                    btext,
                    style: const TextStyle(
                        color: AppColor.TEXT_COLOR,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        stext,
                        style: const TextStyle(
                            color: AppColor.SMALL_TEXT_COLOR,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Text(
                        stext1,
                        style: const TextStyle(
                            color: AppColor.SMALL_TEXT_COLOR_2,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: onTapAdd,
                      icon: const Icon(
                        Icons.add,
                        size: 50,
                        color: AppColor.SMALL_TEXT_COLOR,
                      )),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Container(
                    width: 80.sp,
                    child: Text(
                      value,
                      style: const TextStyle(
                          color: AppColor.TEXT_COLOR,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  IconButton(
                      onPressed: onTapMinus,
                      icon: const Icon(
                        Icons.remove,
                        size: 50,
                        color: AppColor.SMALL_TEXT_COLOR,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}