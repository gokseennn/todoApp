import 'package:get/instance_manager.dart';
import 'package:todo/general/controller/add_new_todo_controller.dart';
import 'package:todo/general/controller/todo_list_controller.dart';

class AddNewTodoBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => AddNewTodoController(),
    );
  }
}
