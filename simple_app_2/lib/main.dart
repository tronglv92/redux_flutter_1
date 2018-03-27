import 'package:flutter/material.dart';
import 'package:simple_app_2/presenter/home_screen.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:simple_app_2/models/app_state.dart';
import 'package:simple_app_2/reducers/app_state_reducer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(todos: new List()),

  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: new StoreProvider(
            store: store,
            child: new HomeScreen(title: 'Flutter Demo Home Page')
        )

    );
  }
}


