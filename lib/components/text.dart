import 'package:flutter/material.dart';

Text getText({required String text, Color? color, double? fontSize, bool? bold, TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: bold ?? false ? FontWeight.bold : FontWeight.normal,
    ),
    textAlign: textAlign,
  );
}
