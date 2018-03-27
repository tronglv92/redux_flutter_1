import 'package:redux/redux.dart';
import 'package:simple_app_2/models/todo.dart';
import 'package:simple_app_2/actions/actions.dart';

final todosReducer = combineTypedReducers<List<Todo>>([
  new ReducerBinding<List<Todo>, AddTodoAction>(_addTodo)
]);

List<Todo> _addTodo(List<Todo> todos, AddTodoAction action) {
  return new List.from(todos)
    ..add(action.todo);
}
