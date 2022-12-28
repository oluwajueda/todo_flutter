import 'package:flutter/cupertino.dart';
import 'package:todo_app_flutter/api/firebase_api.dart';
import 'package:todo_app_flutter/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();

  List<Todo> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void setTodos(List<Todo> todos) =>
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _todos = todos;

        notifyListeners();
      });

  void addTodo(Todo todo) => FirebaseApi.createTodo(todo);
  void removeTodo(Todo todo) => FirebaseApi.deleteTodo(todo);
}
