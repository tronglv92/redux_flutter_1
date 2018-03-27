import 'package:flutter/material.dart';
import 'package:simple_app_2/models/todo.dart';

class AddTodoDialog extends StatefulWidget {

  @override
  AddTodoDialogState createState() {
    // TODO: implement createState
    return new AddTodoDialogState();
  }

}

class AddTodoDialogState extends State<StatefulWidget> {
  String _message;
  String _title;


  AddTodoDialogState();

  TextEditingController _textMessage;
  TextEditingController _textTitle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textMessage = new TextEditingController(text: _message);
    _textTitle = new TextEditingController(text: _title);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add Todo Dialog"),
        actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.of(context).pop(
                    new Todo(title: _title, message: _message));
              },
              child: new Text(
                  'Save', style: new TextStyle(color: Colors.white)))
        ],

      ),

      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Text("Title"),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: 'title',
              ),
              controller: _textTitle,
              onChanged: (value) => _title = value,
            ),
          ),

          new ListTile(
            leading: new Text("Message"),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: 'message',
              ),
              controller: _textMessage,
              onChanged: (value) => _message = value,
            ),
          ),

        ],
      ),
    );
  }

}