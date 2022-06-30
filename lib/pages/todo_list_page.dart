import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController todoController = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoController,
                      textDirection: TextDirection.ltr,
                      cursorColor: const Color(0xff8C2EB2),
                      style: const TextStyle(
                        color: Color(0xff8C2EB2),
                      ),
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          color: Color(0xff8C2EB2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Color(0xff8C2EB2),
                          ),
                        ),
                        focusColor: const Color(0xff8C2EB2),
                        labelText: "Adicionar uma tarefa",
                        hintText: "Exemplo: Estudar",
                        hintStyle: const TextStyle(
                          color: Color(0xffACACAC),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String text = todoController.text;
                      setState(() {
                        todos.add(text);
                      });
                      todoController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff8C2EB2),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ListView(
                shrinkWrap: false,
                children: [
                  for (String todo in todos)
                    Card(
                      color: const Color(0xffeeeeee),
                      child: ListTile(
                        style: ListTileStyle.list,
                        title: Text(
                          todo,
                          style: const TextStyle(
                            color: Color(0xff8C2EB2),
                            fontSize: 18,
                          ),
                        ),
                        subtitle: const Text("01/07/2022"),
                        leading: const Icon(
                          Icons.save,
                          size: 40,
                        ),
                        iconColor: const Color(0xff8C2EB2),
                        onTap: () {
                          print('Tarefa $todo');
                        },
                        onLongPress: () {
                          print("LongPress Tarefa $todo");
                        },
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Você possui 0 tarefas pendentes",
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff8C2EB2),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const Text(
                      "Limpar Tudo",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
