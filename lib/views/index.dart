import 'package:flutter/material.dart';
import 'package:to_do/widgets/taskItemWidget.dart';

class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController inputController = TextEditingController();
  List<String> taskList = <String>[];

  void onDeleteTask() {}

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
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 5)),
                ),
              )),
          Expanded(
              flex: 11,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.separated(
                      padding: const EdgeInsets.all(8),
                      itemBuilder: (BuildContext context, int index) {
                        return TaskItem(
                          taskName: taskList[index],
                          onDelete: () {
                            setState(() {
                              taskList
                                  .removeAt(taskList.indexOf(taskList[index]));
                            });
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: taskList.length)))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            taskList.add(inputController.text);
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
