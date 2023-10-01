import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/config/color_config.dart';
import 'package:gerenciador_tarefas/config/size_config.dart';

Widget getContainer({double? width, double? height, EdgeInsets? padding, EdgeInsets? margin, Color? backgroundColor, double? radius, List<BoxShadow>? shadow, required Widget child}) {
  return Builder(
    builder: (context) => Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      padding: padding ?? const EdgeInsets.all(SizeConfig.spacingNormal),
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorConfig.lightGrey,
        borderRadius: BorderRadius.circular(radius ?? SizeConfig.radiusNormal),
        boxShadow: shadow,
      ),
      child: child,
    ),
  );
}
