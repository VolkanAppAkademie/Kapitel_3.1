import '../models/einnahmen.dart';

abstract class DatabaseRepository {
  // Create
  void addEinnahmen(String id, Todo newEinnahme);
  // Read
  List<String> getAllEinnahmenTitles();
  // Delete
  void removeEinnahme(String id);
}
