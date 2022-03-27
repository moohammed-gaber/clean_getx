import 'package:clean_getx/app/core/config/dio.dart';
import 'package:clean_getx/app/modules/todos/data_sources/remote_data_source/todos_remote_data_source.dart';
import 'package:get/get.dart';

import '../controllers/todos_controller.dart';

class TodosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodosController>(
      () =>
          TodosController(TodosRemoteDataSource(Get.find<ConfiguredDio>().dio)),
    );
  }
}
