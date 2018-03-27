import 'package:meta/meta.dart';
import 'package:simple_app_2/models/todo.dart';

@immutable
class AppState {
  final List<Todo> todos;

  AppState({this.todos = const[]});

  AppState copyWith({List<Todo> todos}) {
    return new AppState(
        todos: todos ?? this.todos
    );
  }
}