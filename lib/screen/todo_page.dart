import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

TextEditingController todo = TextEditingController();
List<String> todos = [];

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('ToDo', style: TextStyle(fontSize: 50)),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: 300,
                    height: 80,
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("ToDo"),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.check),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: todo,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (todo.text.isNotEmpty) {
                        todos.add(todo.text);
                        todo.clear();
                        print(todos);
                      }
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
