import 'dart:ui';

import 'package:flutter_app_boilerplate/common/constant/app_colors.dart';
import 'package:flutter_app_boilerplate/common/theme/color/abstract_theme_colors.dart';

class DarkAppColor extends AbstractThemeColors {
  ///Text
  @override
  Color get text => AppColors.white;

  @override
  Color get accentText => AppColors.white;

  @override
  Color get hintText => AppColors.gray3;

  ///Button
  @override
  Color get buttonActivate => AppColors.pink5;

  @override
  Color get buttonInactivate => AppColors.gray5;

  ///Background
  @override
  Color get background => AppColors.black;

  @override
  Color get focusedBorder => AppColors.gray6;

  @override
  Color get confirmText => AppColors.white;

  @override
  Color get drawerText => text;

  @override
  Color get snackbarBgColor => AppColors.pink5;

  @override
  Color get pinkButtonBackground => AppColors.pink5;

  @override
  Color get divider => AppColors.gray3;
}