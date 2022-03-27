import 'package:clean_getx/app/core/failures/failures.dart';
import 'package:clean_getx/app/modules/todos/controllers/states/todos_state.dart';
import 'package:clean_getx/app/modules/todos/data_sources/remote_data_source/i_todos_remote_data_source.dart';
import 'package:clean_getx/app/modules/todos/data_sources/remote_data_source/todos_remote_data_source.dart';
import 'package:get/get.dart';

class TodosController extends GetxController {
  TodosController(this._todosRemoteDataSource);
  final ITodoRemoteDataSource _todosRemoteDataSource;

  final todosState = TodosState.initial().obs;

  Future<void> getTodos() async {
    todosState.value = TodosState.loading();
    final todos = await _todosRemoteDataSource.getTodos();
    todos.fold((l) {
      todosState.value = TodosState.error();
    }, (r) {
      todosState.value = TodosState.success(todos: r);
    });
  }

  @override
  void onInit() {
    super.onInit();
    getTodos();
  }
}
