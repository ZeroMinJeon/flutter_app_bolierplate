import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/common/constant/app_colors.dart';
import 'package:flutter_app_boilerplate/common/theme/color/abstract_theme_colors.dart';
import 'package:flutter_app_boilerplate/common/theme/color/dark_app_colors.dart';
import 'package:flutter_app_boilerplate/common/theme/color/light_app_colors.dart';

enum AppTheme {
  dark,
  light;

  static MaterialColor primarySwatchColor = AppColors.pink;

  AbstractThemeColors get appColors {
    switch (this) {
      case AppTheme.dark:
        return DarkAppColor();
      case AppTheme.light:
        return LightAppColors();
    }
  }

  ThemeData get themeData {
    switch (this) {
      case AppTheme.dark:
        return darkTheme;
      case AppTheme.light:
        return lightTheme;
    }
  }

  static ThemeData lightTheme = ThemeData(
      primarySwatch: primarySwatchColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      // textTheme: GoogleFonts.singleDayTextTheme(
      //   ThemeData(brightness: Brightness.light).textTheme,
      // ),
      colorScheme: const ColorScheme.light(background: Colors.white));

  static ThemeData darkTheme = ThemeData(
      primarySwatch: primarySwatchColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      // textTheme: GoogleFonts.nanumMyeongjoTextTheme(
      //   ThemeData(brightness: Brightness.dark).textTheme,
      // ),
      colorScheme: const ColorScheme.dark(background: AppColors.gray9));
}
