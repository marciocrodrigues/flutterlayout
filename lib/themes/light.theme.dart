import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText1: new TextStyle(color: Colors.red),
      headline4: new TextStyle(fontSize: 36),
      button: new TextStyle(color: Colors.green),  
    ),
    primaryColor: primaryColor,
    accentColor: Colors.white,
  );
}