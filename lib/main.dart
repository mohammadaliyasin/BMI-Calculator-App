import 'package:bmi_calculator_app/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'bmi_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const BmiScreen(),
    );
  }
}