import 'package:flutter/material.dart';
import 'package:todo_app/ui/constant.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key, required this.items}) : super(key: key);

  final List items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(appDefaultPadding),
            margin: const EdgeInsets.all(appDefaultMargin),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              items[index],
            ),
          );
        },
      ),
    );
  }
}
