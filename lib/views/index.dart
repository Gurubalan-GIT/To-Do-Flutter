import 'package:flutter/material.dart';
import 'package:to_do/widgets/taskItemWidget.dart';

class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController inputController = TextEditingController();
  List<Widget> taskList = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('TO DO LIST')),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: TextField(
                  autocorrect: true,
                  controller: inputController,
                  maxLength: 50,
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: taskList,
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            taskList.add(TaskItem(taskName: inputController.text));
          });
        },
        backgroundColor: Colors.teal[500],
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
