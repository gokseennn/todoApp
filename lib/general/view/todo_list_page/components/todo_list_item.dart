import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todo/general/model/todo_item_model.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    super.key,
    required this.item,
  });

  final Rx<TodoItem> item;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 197, 133, 213),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.home)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      item.value.title,
                      style: TextStyle(
                        decoration: item.value.isDone.value
                            ? TextDecoration.lineThrough
                            : null,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    item.value.time.toString(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Obx(() => Checkbox(
                  value: item.value.isDone.value,
                  onChanged: (value) {
                    item.value.isDone.value = value!;
                  }))
            ],
          ),
        ));
  }
}
