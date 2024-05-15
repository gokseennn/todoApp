import 'package:get/get_rx/src/rx_types/rx_types.dart';

class TodoItem {
  final String title;
  final String description;
  RxBool isDone;
  DateTime? time = DateTime.now();
  final String id;

  TodoItem({
    required this.title,
    required this.id,
    required this.description,
    required this.isDone,
    this.time,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'time': time,
      'id': id,
      'description': description,
      'isDone': isDone.value,
    };
  }

  factory TodoItem.fromJson(Map<String, dynamic> map) {
    return TodoItem(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      isDone: map['isDone'],
      time: map['time'],
    );
  }
}
