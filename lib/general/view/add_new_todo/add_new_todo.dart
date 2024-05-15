import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/general/controller/add_new_todo_controller.dart';

class AddNewTodoPage extends GetView<AddNewTodoController> {
  const AddNewTodoPage({super.key});
  static const routeName = '/add-new-todo';
  @override
  Widget build(BuildContext context) {
    int selectedCategory = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 131, 36, 233),
        title: const Text('Add New Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Task Title",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter task title',
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Category",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {
                        selectedCategory = 0;
                      },
                      icon: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.home),
                      )),
                  IconButton(
                      onPressed: () {
                        selectedCategory = 1;
                      },
                      icon: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.favorite),
                      )),
                  IconButton(
                      onPressed: () {
                        selectedCategory = 2;
                      },
                      icon: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.school),
                      )),
                  IconButton(
                      onPressed: () {
                        selectedCategory = 3;
                      },
                      icon: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.calendar_month),
                      )),
                  IconButton(
                    onPressed: () {
                      selectedCategory = 4;
                    },
                    icon: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(Icons.person),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 10,
                  decoration: const InputDecoration(
                    hintText: 'Enter Notes',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 131, 36, 233)),
                      ),
                      onPressed: () {
                        controller.addNewTodo();
                      },
                      child: const Text(
                        'Add Task',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
