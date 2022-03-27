import 'package:get/get.dart';

import '../../modules/todos/bindings/todos_binding.dart';
import '../../modules/todos/views/todos_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TODOS;

  static final routes = [
    GetPage(
      name: _Paths.TODOS,
      page: () => TodosView(),
      binding: TodosBinding(),
    ),
  ];
}
