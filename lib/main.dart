import 'package:flutter/material.dart';
import 'package:to_do/views/index.dart';

void main() => (runApp(ToDoApp()));

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.grey[900],
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: ToDoPage(),
    );
  }
}
