import '../models/todo.dart';

abstract class DatabaseRepository {
  // Create
  void addTodo(String id, Todo newTodo);
  // Read
  List<String> getAllTodoTitles();
  // Delete
  void removeTodo(String id);
}
