import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  TaskItem({@required this.taskName, this.onDelete});
  final String taskName;
  final Function onDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(taskName),
          GestureDetector(
            onTap: onDelete,
            child: Icon(
              Icons.delete,
              color: Colors.red[800],
            ),
          )
        ],
      ),
    );
  }
}
