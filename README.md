# redux_flutter_1


This sample makes use of the Redux and flutter_redux libraries to manage state

# This is part one - set up and send one action add todo 

# Key Concepts
  - App ```State``` is an immutable Object that lives at the top of your Widget hierarchy within a Store.
  - The ```Store``` is passed down to all ancestors via an InheritedWidget called a StoreProvider
  - The ```State``` object is immutable. To create a new State, you must dispatch an Action.
  - The ```Action``` will be picked up by a ```Reducer```, which is a function that builds and returns a new ```State``` based on the previous ```State``` and the ```Action``` that was dispatched.
  - Reducers are pure functions.
When there is a new app ```State```, all Widgets connected to the ```Store``` using ```StoreConnector``` will be rebuilt.

# Updating App State

In order to update the App State in a Redux app, you must dispatch an Action.

This Action will then be intercepted by your Reducer function, which is responsible for updating the App State using the data contained within the Action.

Reducer functions are pure functions. They are only responsible for taking in the last state and the dispatched action, and returning a new App State.

Dispatching Actions and updating the App State in this rigorous way allows you to easily determine:

1. What Action caused a State change
2. What Reducer is responsible for handling that change
3. Why the State was broken in response to an Action.
4. When a View needs to update in response to a State change

# Referent
- https://github.com/brianegan/flutter_architecture_samples
- https://marcinszalek.pl/flutter/reduxing-flutter/
