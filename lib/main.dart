import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/config/color_config.dart';
import 'package:gerenciador_tarefas/pages/tarefas/tarefas_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch(backgroundColor: ColorConfig.primary)),
      home: const TarefasPage(),
    );
  }
}
