import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';

class AppThemes {
  static ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: AppColors.primaryColorLight,
    primaryColorDark: AppColors.primaryColorDark,
    accentColor: AppColors.accentColor,
  );

  static SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.pink,
    statusBarColor: AppColors.pink,
    statusBarIconBrightness: Brightness.dark
  );
}