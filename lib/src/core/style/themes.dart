import 'package:flutter/material.dart';

class AppThemes {
  const AppThemes._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    // primaryColor: AppColors.primaryColor,
    // colorScheme: ColorScheme.fromSwatch(
    // primarySwatch: AppColors.primaryColor,
    // ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    // fontFamily: AppTypography.fontFamily,
    // primaryColor: AppColors.primaryColor,
    // colorScheme: ColorScheme.fromSwatch(
    //   primarySwatch: AppColors.primaryColor,
      // brightness: Brightness.dark,
    // ),
  );
}
