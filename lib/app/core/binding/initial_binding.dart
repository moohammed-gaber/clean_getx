import 'package:clean_getx/app/core/config/dio.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfiguredDio>(() => ConfiguredDio());
  }
}
