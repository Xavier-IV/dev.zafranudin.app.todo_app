import 'package:flutter/material.dart';
import 'package:todo_app/ui/constant.dart';

class TodoControl extends StatefulWidget {
  const TodoControl({Key? key}) : super(key: key);

  @override
  State<TodoControl> createState() => _TodoControlState();
}

class _TodoControlState extends State<TodoControl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(appDefaultMargin),
      child: Center(
        child: Container(
          width: 100.0,
          margin: const EdgeInsets.all(appDefaultMargin),
          padding: const EdgeInsets.symmetric(
            horizontal: appDefaultPadding,
            vertical: appDefaultPadding / 4, // 5 top and bottom
          ),
          child: OutlinedButton(
            onPressed: () => {},
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
