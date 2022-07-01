import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    Key? key,
    required this.todo,
    required this.onDelete,
  }) : super(key: key);

  final Todo todo;
  final Function(Todo) onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Slidable(
        child: Card(
          color: const Color(0xffeeeeee),
          child: ListTile(
            style: ListTileStyle.list,
            title: Text(
              todo.title,
              style: const TextStyle(
                color: Color(0xff8C2EB2),
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              DateFormat('dd/MM/yyyy - HH:mm').format(todo.dateTime),
            ),
            leading: const Icon(
              Icons.save,
              size: 40,
            ),
            iconColor: const Color(0xff8C2EB2),
            onTap: () {
              print('Tarefa "Texto"');
            },
            onLongPress: () {
              print("LongPress Tarefa Texto");
            },
          ),
        ),
        actionExtentRatio: 0.25,
        actionPane: const SlidableDrawerActionPane(),
        secondaryActions: [
          IconSlideAction(
            color: Colors.red,
            icon: Icons.delete,
            caption: 'Deletar',
            onTap: () {
              onDelete(todo);
            },
          )
        ],
      ),
    );
  }
}
