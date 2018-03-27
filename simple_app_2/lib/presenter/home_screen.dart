import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:simple_app_2/actions/actions.dart';
import 'package:simple_app_2/models/app_state.dart';
import 'package:simple_app_2/models/todo.dart';
import 'package:simple_app_2/container/to_do_item.dart';
import 'package:simple_app_2/presenter/add_todo_dialog.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen({Key key, this.title}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new StoreConnector<AppState, HomeViewModel>(
        converter: (store) {
          return new HomeViewModel(
              todos: store.state.todos,
              addTodoCallback: ((todo) =>
                  store.dispatch(new AddTodoAction(todo)))
          );
        },
        builder: (context, viewModel) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text(title),

            ),
            body: new ListView.builder(
                padding: new EdgeInsets.all(8.0),
                itemCount: viewModel.todos.length,
                itemBuilder: (BuildContext context, int index) {
                  return new ToDoItem(todo: viewModel.todos[index],);
                }

            ),
            floatingActionButton: new FloatingActionButton(
              onPressed: () {
                _openAddTodoDialog(context, viewModel.addTodoCallback);
              }, child: new Icon(Icons.add),),
          );
        });
  }

  _openAddTodoDialog(BuildContext context,
      Function(Todo) onAddTodoCallback) async {
    Todo todo = await Navigator.of(context).push(new MaterialPageRoute<Todo>(
        builder: (BuildContext context) {
          return new AddTodoDialog();
        }
    ));

    if (todo != null) {
      onAddTodoCallback(todo);
    }
  }

}

@immutable
class HomeViewModel {
  final List<Todo> todos;

  //functions
  final Function(Todo) addTodoCallback;


  HomeViewModel({this.todos, this.addTodoCallback});
}