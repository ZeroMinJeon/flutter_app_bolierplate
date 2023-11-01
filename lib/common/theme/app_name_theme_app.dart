import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/common/theme/app_theme.dart';

class CustomThemeApp extends StatefulWidget {

  final Widget child;
  const CustomThemeApp({super.key, required this.child});

  @override
  State<CustomThemeApp> createState() => _CustomThemeAppState();
}

class _CustomThemeAppState extends State<CustomThemeApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  //TODO:
  // AppTheme? get savedTheme

  // AppTheme get systemTheme {
  //   switch(Theme)
  // }
}
