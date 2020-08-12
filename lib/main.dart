import 'package:warda/ui/screens/splash_screen.dart';
import 'package:warda/ui/values/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(WardaApp());

class WardaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turmai',
      theme: AppThemes.appTheme,
      home: SplashScreen(),
    );
  }
}
