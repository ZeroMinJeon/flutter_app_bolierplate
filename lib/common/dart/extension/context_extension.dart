import 'package:flutter/cupertino.dart';
import 'package:flutter_app_boilerplate/common/theme/app_theme.dart';
import 'package:flutter_app_boilerplate/common/theme/app_theme_holder.dart';
import 'package:flutter_app_boilerplate/common/theme/color/abstract_theme_colors.dart';

extension ContextExtension on BuildContext {
  double width(double widthRatio) =>
      MediaQuery.of(this).size.width * widthRatio;

  double height(double heightRatio) =>
      MediaQuery.of(this).size.height * heightRatio;

  double get deviceWidth => MediaQuery.of(this).size.width;

  double get deviceHeight => MediaQuery.of(this).size.height;

  double get viewPaddingBottom => MediaQuery.of(this).viewPadding.bottom;

  AppTheme get themeType => AppThemeHolder.of(this).theme;

  AbstractThemeColors get appColors => AppThemeHolder.of(this).appColors;

  Function(AppTheme) get changeTheme => AppThemeHolder.of(this).changeTheme;
}
