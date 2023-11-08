import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/common/constant/app_colors.dart';

abstract class AbstractThemeColors {
  ///Text
  Color get text => AppColors.gray10;

  Color get accentText => AppColors.gray11;

  Color get hintText => AppColors.gray5;

  ///Button
  Color get buttonActivate => AppColors.pink5;

  Color get buttonInactivate => AppColors.gray5;

  ///Background
  Color get background => AppColors.white;

  Color get focusedBorder => AppColors.gray6;

  Color get confirmText => AppColors.gray10;

  Color get drawerText => text;

  Color get snackbarBgColor => AppColors.pink5;

  Color get pinkButtonBackground => AppColors.pink5;

  Color get divider => AppColors.gray7;
}
