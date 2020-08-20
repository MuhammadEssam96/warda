import 'package:flutter/material.dart';
import 'package:warda/ui/screens/home_screen.dart';
import 'package:warda/ui/screens/shopping_cart_screen.dart';
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
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appTheme,
      home: SplashScreen(),
      routes: {
        '/SplashScreen' : (context) => SplashScreen(),
        '/HomeScreen' : (context) => HomeScreen(),
        '/ShoppingCartScreen' : (context) => ShoppingCartScreen(),
      }
    );
  }
}
