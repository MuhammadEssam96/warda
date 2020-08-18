import 'package:flutter/material.dart';
import 'package:warda/ui/values/colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/HomeScreen');
    });

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset("assets/images/warda_logo.png")
      )
    );
  }
}
