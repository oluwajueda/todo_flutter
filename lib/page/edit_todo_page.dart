//@dart=2.9

// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_flutter/model/todo.dart';
import 'package:todo_app_flutter/provider/todos.dart';
import 'package:todo_app_flutter/widget/todo_form_widget.dart';

class EditTodoPage extends StatefulWidget {
  final Todo todo;

  const EditTodoPage({Key key, @required this.todo}) : super(key: key);

  @override
  State<EditTodoPage> createState() => _EditTodoPageState();
}

class _EditTodoPageState extends State<EditTodoPage> {
  final _formKey = GlobalKey<FormState>();

  String title;
  String description;

  @override
  void initState() {
    super.initState();

    title = widget.todo.title;
    description = widget.todo.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Edit Todo'), actions: [
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            final provider = Provider.of<TodosProvider>(context, listen: false);
            provider.removeTodo(widget.todo);
    
            Navigator.of(context).pop();
          },
        )
      ]),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _formKey,
          child: TodoFormWidget(
            onChangedDescription: (description) => setState((() => this.description = description,),
          
          )
          
          ),
        
        ),
    )
    
    );
    
  }
  
}
