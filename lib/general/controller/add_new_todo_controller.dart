import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo/general/model/todo_item_model.dart';
import 'package:uuid/uuid.dart';

class AddNewTodoController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final storage = GetStorage();
  void addNewTodo() {
    storage.write(
        "todo",
        TodoItem(
                title: titleController.text,
                id: const Uuid().v4.toString(),
                description: descriptionController.text,
                isDone: false.obs)
            .toJson());
  }
}
