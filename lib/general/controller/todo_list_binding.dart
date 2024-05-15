import 'package:get/instance_manager.dart';
import 'package:todo/general/controller/todo_list_controller.dart';

class TodoListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => TodoListController(),
    );
  }
}
