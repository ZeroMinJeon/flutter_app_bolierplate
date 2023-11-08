import 'package:flutter/material.dart';

class Tap extends StatelessWidget {
  final Widget child;
  final void Function() onTap;
  final void Function()? onLongPress;

  const Tap({
    super.key,
    required this.child,
    required this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        onLongPress: onLongPress,
        child: child,
      ),
    );
  }
}
