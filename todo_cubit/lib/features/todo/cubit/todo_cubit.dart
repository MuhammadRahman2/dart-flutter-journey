import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/features/todo/cubit/todo_state.dart';
import 'package:todo_cubit/features/todo/model/todo.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoState(todos: []));

  void addTodo(String title) {
    final updatedTodos = [...state.todos, Todo(title: title)];

    emit(TodoState(todos: updatedTodos));
  }

  void removeTodo(int index) {
    final updated = List<Todo>.from(state.todos);
    updated.removeAt(index);

    emit(TodoState(todos: updated));
  }
}
