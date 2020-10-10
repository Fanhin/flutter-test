
import 'package:flutter/material.dart';

class TodolistPage extends StatefulWidget {
  @override
  _TodolistPageState createState() => _TodolistPageState();
}

class _TodolistPageState extends State<TodolistPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoList Page"),
      ),
    );
  }
}
