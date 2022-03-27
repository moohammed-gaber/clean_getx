import 'package:clean_getx/app/core/binding/initial_binding.dart';
import 'package:clean_getx/app/core/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialBinding: InitialBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
