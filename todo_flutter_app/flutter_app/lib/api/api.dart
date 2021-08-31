import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/todo.dart';
import './models/todo.dart';
import 'package: http/http.dart' as http;

class TodoProvider with ChangeNotifier{
  TodoProvider(){
    this.fetchTasks();
  }
  List<Todo> _todos =[];
  List<Todo> get todos{
    return[..._todos];
  }
  fetchTasks()async{
    // store inside variables
    final url='http://10.0.2.2:8000/apis/v1/?format=json';
    final response=await http.get(url);
    if(response.statusCode==200){
      //change json format to dart format
      var data=json.decode(response.body) as List;
      _todos=data.map<Todo>((Json) => Todo.fromJson(Json)).toList();
    }
    
  }
}