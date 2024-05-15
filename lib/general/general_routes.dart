import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:todo/general/controller/add_new_todo_binding.dart';
import 'package:todo/general/controller/todo_list_binding.dart';
import 'package:todo/general/view/add_new_todo/add_new_todo.dart';
import 'package:todo/general/view/todo_list_page/todo_list_page.dart';

class GeneralRoutes {
  static final routes = [
    GetPage(
      name: TodoListPage.routeName,
      page: () => const TodoListPage(),
      binding: TodoListBinding(),
    ),
    GetPage(
        name: AddNewTodoPage.routeName,
        page: () => const AddNewTodoPage(),
        binding: AddNewTodoBinging())
  ];
}
