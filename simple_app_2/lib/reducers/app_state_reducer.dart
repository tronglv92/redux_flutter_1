import 'package:simple_app_2/models/app_state.dart';
import 'package:simple_app_2/reducers/todos_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
      todos: todosReducer(state.todos, action)
  );
}