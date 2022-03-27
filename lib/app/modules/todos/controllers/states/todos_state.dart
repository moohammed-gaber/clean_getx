import 'package:clean_getx/app/modules/todos/models/todo_model.dart';
import 'package:sealed_unions/sealed_unions.dart';

class TodosState extends Union4Impl<TodosLoadingSuccess, TodosLoadingInProgress,
    TodosFailure, TodosInitial> {
  static const _factory = Quartet<TodosLoadingSuccess, TodosLoadingInProgress,
      TodosFailure, TodosInitial>();

  TodosState._(
      Union4<TodosLoadingSuccess, TodosLoadingInProgress, TodosFailure,
              TodosInitial>
          union)
      : super(union);

  factory TodosState.loading() {
    return TodosState._(_factory.second(TodosLoadingInProgress()));
  }

  factory TodosState.error() {
    return TodosState._(_factory.third(TodosFailure()));
  }

  factory TodosState.success({required List<Todo> todos}) {
    return TodosState._(_factory.first(TodosLoadingSuccess(todos: todos)));
  }

  factory TodosState.initial() {
    return TodosState._(_factory.fourth(TodosInitial()));
  }
}

class TodosInitial {}

class TodosLoadingInProgress {}

class TodosLoadingSuccess {
  final List<Todo> todos;

  TodosLoadingSuccess({required this.todos});
}

class TodosFailure {}
