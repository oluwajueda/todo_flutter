// ignore_for_file: prefer_const_constructors
//@dart= 2.9
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/model/todo.dart';
import 'package:todo_app_flutter/provider/todos.dart';
import 'package:todo_app_flutter/widget/todo_form_widget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  State<AddTodoDialogWidget> createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
          content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'Add Todo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TodoFormWidget(
              onChangedTitle: (title) => setState(() {
                this.title = title;
              }),
              onChangedDescription: (description) => setState(() {
                this.description = description;
              }),
              onSavedTodo: addTodo,
            ),
          ],
        ),
      ));

  void addTodo() {
    final isValid = _formKey.currentState.validate();

    if (isValid) {
      return;
    } else {
      final todo = Todo(
          id: DateTime.now().toString(),
          title: title,
          description: description,
          createdTime: DateTime.now());

      final provider = Provider.of<TodosProvider>(context, listen: false);
      provider.addTodo(todo);

      Navigator.of(context).pop();
    }
  }
}
