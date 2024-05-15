import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo/general/model/todo_item_model.dart';

class TodoListController extends GetxController {
  final todoList = <TodoItem>[].obs;
  final storage = GetStorage();

  @override
  @override
  void onInit() {
    List<dynamic> storedTodoList = storage.read("todoList") ?? [];
    if (storedTodoList.isNotEmpty) {
      for (var element in storedTodoList) {
        todoList.add(TodoItem.fromJson(element));
      }
    }

    super.onInit();
  }
}
