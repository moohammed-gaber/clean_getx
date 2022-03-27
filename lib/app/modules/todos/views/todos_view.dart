import 'package:clean_getx/app/core/widgets/retry_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/todos_controller.dart';

class TodosView extends GetView<TodosController> {
  const TodosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todos'),
          centerTitle: true,
        ),
        body: Scaffold(
          body: Obx(() {
            final todosState = controller.todosState.value;
            return todosState.join((success) {
              final todos = success.todos;
              return ListView.separated(
                itemCount: todos.length,
                itemBuilder: (BuildContext context, int index) {
                  final todo = todos[index];
                  return ListTile(
                    trailing: Icon(
                      Icons.check_circle_outline,
                      color: todo.completed ? Colors.green : Colors.grey,
                    ),
                    subtitle: Text(todo.title.toString()),
                    title: Text(todo.id.toString()),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              );
            },
                (progress) => const Center(child: CircularProgressIndicator()),
                (failure) =>
                    Center(child: Retry(onPressed: controller.getTodos)),
                (initial) => const SizedBox());
          }),
        ));
  }
}
