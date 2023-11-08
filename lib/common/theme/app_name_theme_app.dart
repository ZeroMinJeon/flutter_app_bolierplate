import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/common/theme/app_theme.dart';
import 'package:flutter_app_boilerplate/common/theme/app_theme_holder.dart';
import 'package:flutter_app_boilerplate/common/util/theme_util.dart';

class AppNameThemeApp extends StatefulWidget {
  final Widget child;

  const AppNameThemeApp({super.key, required this.child});

  @override
  State<AppNameThemeApp> createState() => _AppNameThemeAppState();
}

class _AppNameThemeAppState extends State<AppNameThemeApp> {
  late AppTheme theme = savedTheme ?? systemTheme;

  void handleChangeTheme(AppTheme theme) => setState(() {
        this.theme = theme;
      });

  @override
  Widget build(BuildContext context) {
    return AppThemeHolder(
      theme: theme,
      changeTheme: handleChangeTheme,
      child: widget.child,
    );
  }

  //TODO: get data from prefs
  AppTheme? get savedTheme => null;

  AppTheme get systemTheme {
    switch (ThemeUtil.systemBrightness) {
      case Brightness.dark:
        return AppTheme.dark;
      case Brightness.light:
        return AppTheme.light;
    }
  }
}
