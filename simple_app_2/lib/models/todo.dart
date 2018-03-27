import 'package:meta/meta.dart';

@immutable
class Todo {
  final String title;
  final String message;

  Todo({this.title, this.message});

  Todo copyWith({String title, String message}) {
    return new Todo(
        title: title ?? this.title,
        message: message ?? this.message
    );
  }
}