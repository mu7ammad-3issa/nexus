import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  int? maxLines;
  Color? color;
  TextDecoration? textDecoration;

  AppText({Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.color,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines?? 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize ,
        fontWeight: fontWeight,
        color: color,
        decoration: textDecoration,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
