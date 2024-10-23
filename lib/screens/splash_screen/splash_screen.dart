import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todolist_app/util/app_images.dart';
import 'package:todolist_app/util/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Navigator.popAndPushNamed(context, '/HomeScreen'));
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: AppColors.primary,
        child: Center(
          child: SizedBox(height: 200, child: Image.asset(AppImages.appLogo)),
        ),
      ),
    );
  }
}
