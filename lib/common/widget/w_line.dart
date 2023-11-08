import 'package:flutter/widgets.dart';
import 'package:flutter_app_boilerplate/common/dart/extension/context_extension.dart';

class Line extends StatelessWidget {
  final EdgeInsets? margin;
  final double? thickness;
  final Color? color;
  final Axis? axis;

  const Line({
    super.key,
    this.margin,
    this.thickness = 1,
    this.color,
    this.axis = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.horizontal) {
      return Container(
        height: thickness,
        margin: margin,
        color: color ?? context.appColors.divider,
      );
    }
    return Container(
      width: thickness,
      margin: margin,
      color: color ?? context.appColors.divider,
    );
  }
}
