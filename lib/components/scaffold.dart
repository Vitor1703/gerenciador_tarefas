import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/components/text.dart';

Scaffold getScaffold({required String title, required Widget body, Widget? floatingButton}) {
  return Scaffold(
    appBar: AppBar(
      title: getText(text: title, bold: true),
      centerTitle: true,
    ),
    floatingActionButton: floatingButton,
    body: body,
  );
}
