import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/ui/constant.dart';
import 'package:todo_app/ui/screen/todo/components/todo_control.dart';

import 'components/todo_list.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TodoScreen> {
  List todoItems = ['Final year project', 'Register account'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TodoList(
                items: todoItems,
              ),
              TodoControl(),
              SizedBox(height: 220.0)
            ],
          ),
        ),
      ),
    );
  }
}
