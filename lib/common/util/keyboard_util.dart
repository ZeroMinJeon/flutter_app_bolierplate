import 'dart:async';

import 'package:flutter/widgets.dart';

class KeyboardUtil {
  static void hide(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
  static void show(BuildContext context, FocusNode node) {
    FocusScope.of(context).unfocus();
    Timer(const Duration(milliseconds: 1), () {
      FocusScope.of(context).requestFocus(node);
    });
  }
}