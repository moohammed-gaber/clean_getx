import 'package:clean_getx/app/core/failures/failures.dart';
import 'package:clean_getx/app/modules/todos/models/todo_model.dart';
import 'package:dartz/dartz.dart';

abstract class ITodoRemoteDataSource {
  Future<Either<Failure, List<Todo>>> getTodos();
}
