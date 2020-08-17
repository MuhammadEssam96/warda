import 'package:flutter/material.dart';
import 'package:warda/ui/values/colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset("assets/images/warda_logo.png")
      )
    );
  }
}
