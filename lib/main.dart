import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo/general/controller/todo_list_binding.dart';
import 'package:todo/general/general_routes.dart';
import 'package:todo/general/view/todo_list_page/todo_list_page.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialBinding: TodoListBinding(),
        getPages: GeneralRoutes.routes,
        home: const TodoListPage());
  }
}
