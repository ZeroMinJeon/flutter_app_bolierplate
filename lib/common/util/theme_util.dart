import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_app_boilerplate/common/dart/extension/context_extension.dart';
import 'package:flutter_app_boilerplate/common/theme/app_theme.dart';

class ThemeUtil {
  static Brightness get systemBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;

  static void changeTheme(BuildContext context, AppTheme theme) {
   //TODO : save Theme
    context.changeTheme(theme);
  }

  static void toggleTheme(BuildContext context) {
    final theme = context.themeType;
    switch (theme) {
      case AppTheme.dark:
        changeTheme(context, AppTheme.light);
        break;
      case AppTheme.light:
        changeTheme(context, AppTheme.dark);
        break;
    }
  }
}
