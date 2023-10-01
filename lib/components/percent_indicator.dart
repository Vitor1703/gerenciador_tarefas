import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/config/color_config.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget getLinearPercentIndicator(double percent, {double? width, double? lineHeight, Color? progressColor, MainAxisAlignment? alignment, Radius? barRadius, Color? color}) {
  return LinearPercentIndicator(
    barRadius: barRadius,
    alignment: alignment ?? MainAxisAlignment.start,
    width: width ?? 100.0,
    lineHeight: lineHeight ?? 14.0,
    percent: min(max(percent, 0), 1),
    progressColor: progressColor ?? ColorConfig.white,
    backgroundColor: ColorConfig.black.withOpacity(0.1),
    animation: true,
    animationDuration: 1200,
  );
}
