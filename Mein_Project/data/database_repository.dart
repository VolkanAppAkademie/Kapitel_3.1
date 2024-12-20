import '../models/einnahmen.dart';

abstract class DatabaseRepository {
  // Create
  void addEinnahmen(String id, Einnahmen newEinnahme);
  // Read
  List<String> getAllEinnahmenTitles();
  // Delete
  void removeEinnahmen(String id);
}
