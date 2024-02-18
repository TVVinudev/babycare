import 'package:babycare/utils/themes/custom_themes/appbar_theme.dart';
import 'package:babycare/utils/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:babycare/utils/themes/custom_themes/checkbox_theme.dart';
import 'package:babycare/utils/themes/custom_themes/chip_theme.dart';
import 'package:babycare/utils/themes/custom_themes/elevatedButton_theme.dart';
import 'package:babycare/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:babycare/utils/themes/custom_themes/text_field_theme.dart';
import 'package:babycare/utils/themes/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'RobotoCondensed',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevtedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBar.lightAppBar,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      chipTheme: TChipTheme.lightChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'RobotoCondensed',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevtedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBar.darkAppBar,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      chipTheme: TChipTheme.darkChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme);
}
