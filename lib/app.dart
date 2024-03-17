import 'package:babycare/features/authentication/screens/onboarding/onboarding.dart';
import 'package:babycare/navigation_menu.dart';
import 'package:babycare/utils/constants/color.dart';
import 'package:babycare/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: TColor.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: TColor.white,
          ),
        ),
      ),
    );
  }
}