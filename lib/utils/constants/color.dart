import 'package:flutter/material.dart';

class TColor{
  TColor._();

  //App Basic Color
  static const Color primary = Color(0xff4B68ff);
  static const Color secondary = Color(0xfffffc4b);
  static const Color accent = Color(0xFFb0c7ff);

  //Text color
  static const Color textPrimary = Color(0xff2d2d2d);
  static const Color textSecondary = Color(0xff696666);
  static const Color textWhite = Color(0xffffffff);

  //background color
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  //background container color
  static const Color lightContainer = Color(0xfff6f6f6);
  static const Color darkContainer = Color(0x2ff6f6f6);

  //button color
  static const Color buttonPrimary = Color(0xff4B68ff);
  static const Color buttonSecondary = Color(0xff696666);
  static const Color buttonDisable = Color(0xFFC4C4C4);

  // border color
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

  //error and validation color
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  //neutral shade
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFe0e0e0);

  //gradient color
 static const Gradient linerGradient = LinearGradient(
     begin: Alignment(0, 0),
     end: Alignment(0.707, -0.707),
     colors: [
   Color(0xffff9a9e),
   Color(0xfffad0c4),
   Color(0xfffad0c4),
 ]);

}