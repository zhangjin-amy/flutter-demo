// 创建一个todo 类
import 'package:flutter/material.dart';

class ToDo {
  final String title;
  final String message;

  ToDo(this.title, this.message);
}

// 创建todos
// final todos = List.generate(10, (index) => ToDo('title$index', 'message$index'));

class TodoPage extends StatelessWidget {
  final List<ToDo> _todos = List.generate(10, (index) => ToDo('title$index', 'message$index'));
  @override
  Widget build(BuildContext context) {
    return TodosScreen(key, _todos);
  }
}

//  ListView 显示待办事
class TodosScreen extends StatelessWidget {
  TodosScreen( Key? key, this.todos ): super(key: key);
  final List<ToDo> todos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: (){
              // Navigator.push(context, () => )
            },
          );
        },
        itemCount: todos.length,
      ),
    );
  }
}