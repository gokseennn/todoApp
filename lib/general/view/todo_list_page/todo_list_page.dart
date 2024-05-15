import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:todo/general/controller/todo_list_controller.dart';
import 'package:todo/general/view/add_new_todo/add_new_todo.dart';
import 'package:todo/general/view/todo_list_page/components/todo_list_item.dart';

class TodoListPage extends GetView<TodoListController> {
  const TodoListPage({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 131, 36, 233),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom)
            .add(const EdgeInsets.symmetric(horizontal: 50)),
        child: Center(
          child: InkWell(
            onTap: () => Get.toNamed(AddNewTodoPage.routeName),
            child: Text(
              "Add new ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 131, 36, 233),
            height: Get.height * 0.3,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      'My Todo List',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: controller.todoList.length,
                      itemBuilder: (context, index) {
                        return TodoListItem(
                          item: controller.todoList[index].obs,
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
