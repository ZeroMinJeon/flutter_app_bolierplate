import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/common/theme/app_theme.dart';
import 'package:flutter_app_boilerplate/common/theme/color/abstract_theme_colors.dart';

class AppThemeHolder extends InheritedWidget {
  final AbstractThemeColors appColors;
  final AppTheme theme;
  final Function(AppTheme) changeTheme;

  AppThemeHolder({
    required Widget child,
    required this.theme,
    required this.changeTheme,
    Key? key,
  })  : appColors = theme.appColors,
        super(key: key, child: child);

  @override
  bool updateShouldNotify(AppThemeHolder oldWidget) {
    final old = oldWidget.theme;
    final current = theme;
    final need = old != current;
    return need;
  }

  static AppThemeHolder of(BuildContext context) {
    AppThemeHolder inherited =
    (context.dependOnInheritedWidgetOfExactType<AppThemeHolder>())!;
    return inherited;
  }
}