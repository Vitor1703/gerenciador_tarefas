import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/config/color_config.dart';
import 'package:gerenciador_tarefas/config/size_config.dart';

Widget getButton({void Function()? onPressed, double? width, double? height, double? maxWidth, double? maxHeight, required Widget child}) {
  return Builder(
    builder: (context) => ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConfig.primary,
        minimumSize: Size(width ?? MediaQuery.of(context).size.width, height ?? 50),
        maximumSize: Size(maxWidth ?? MediaQuery.of(context).size.width, maxHeight ?? 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SizeConfig.radiusNormal)),
      ),
      child: child,
    ),
  );
}
