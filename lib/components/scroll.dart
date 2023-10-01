import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/config/size_config.dart';

Widget getScrollVertical({required List<Widget> children}) {
  return ListView(
    padding: const EdgeInsets.all(SizeConfig.spacingNormal),
    scrollDirection: Axis.vertical,
    children: children,
  );
}