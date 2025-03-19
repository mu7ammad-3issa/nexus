import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final TextStyle? style;
  final String? semanticsLabel;

  const AppText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.color,
    this.textDecoration,
    this.textAlign,
    this.style,
    this.semanticsLabel,
  });

  @override
  Widget build(BuildContext context) {
    // Inherit text style from the theme or parent widget
    final TextStyle inheritedStyle = DefaultTextStyle.of(context).style;

    return Text(
      text,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      semanticsLabel: semanticsLabel,
      style: (style ?? inheritedStyle).copyWith(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: textDecoration,
      ),
    );
  }
}
