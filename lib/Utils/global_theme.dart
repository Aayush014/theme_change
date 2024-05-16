import 'package:flutter/material.dart';

class ThemeClass {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black,size: 30)
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white,size: 30)
  );
}