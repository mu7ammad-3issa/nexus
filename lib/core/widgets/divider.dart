import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final Color? color;
  final double? indent;
  final double? endIndent;
  const AppDivider({
    super.key,
    this.height,
    this.color,
    this.indent,
    this.endIndent,
    this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? 1.5,
      color: color ?? Colors.grey,
      indent: indent,
      endIndent: endIndent,
      thickness: thickness ?? 1.5,
    );
  }
}
