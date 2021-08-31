import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/api/api.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TodoProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:MyHomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider;
    final todop=provider.of<TodoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: ListView.builder(
        itemCount: todop.todos.length,
        itemBuilder: (BuildContext,index){
          return ListTile(
            title: Text(todop.todos[index].title),
            subtitle: Text((todop.todos[index].description),
          ));
        },
      ),
    );
      
  
  }
}
