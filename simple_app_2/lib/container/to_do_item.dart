import 'package:flutter/material.dart';
import 'package:simple_app_2/models/todo.dart';

class ToDoItem extends StatelessWidget {
  final Todo todo;

  ToDoItem({Key key, this.todo}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            new Text(todo.title),
            new Container(
              padding: new EdgeInsets.only(top: 2.0),
              child: new Text(todo.message),
            )
          ],
        )
    );
  }

}