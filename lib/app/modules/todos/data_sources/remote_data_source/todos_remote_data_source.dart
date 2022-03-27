import 'package:clean_getx/app/core/failures/failures.dart';
import 'package:clean_getx/app/modules/todos/data_sources/remote_data_source/i_todos_remote_data_source.dart';
import 'package:clean_getx/app/modules/todos/models/todo_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class TodosRemoteDataSource implements ITodoRemoteDataSource {
  final Dio dio;

  TodosRemoteDataSource(this.dio);

  @override
  Future<Either<Failure, List<Todo>>> getTodos() async {
    try {
      final result = await dio.get('/todos');
      return right(Todo.fromJsonList(result.data));
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
