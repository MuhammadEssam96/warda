import 'package:flutter/material.dart';
import 'package:warda/ui/screens/splash_screen.dart';
import 'package:warda/ui/values/themes.dart';
import 'package:flutter/services.dart';

void main() => runApp(WardaApp());

class WardaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(AppThemes.systemUiOverlayStyle);
    return MaterialApp(
      title: 'Warda',
      theme: AppThemes.appTheme,
      home: SplashScreen(),
    );
  }
}
