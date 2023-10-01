import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/components/container_tarefa.dart';
import 'package:gerenciador_tarefas/components/scaffold.dart';
import 'package:gerenciador_tarefas/components/scroll.dart';

class TarefasPage extends StatefulWidget {
  const TarefasPage({super.key});

  @override
  State<TarefasPage> createState() => _TarefasPageState();
}

class _TarefasPageState extends State<TarefasPage> {
  Widget body() {
    return getScrollVertical(
      children: [
        getContainerTarefa(),
        getContainerTarefa(),
        getContainerTarefa(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      title: 'Tarefas',
      body: body(),
      floatingButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
