import 'package:flutter/material.dart';

class NotesProvider extends ChangeNotifier {
  final List<Map<String, String>> _notes = [];

  List<Map<String, String>> get note => _notes;

  void addNote(Map<String, String> note) {
    _notes.add(note);
    notifyListeners();
  }

  void updateNote(int index, Map<String, String> note) {
    _notes[index] = note;
    notifyListeners();
  }

  void deleteNote(int index) {
    _notes.removeAt(index);
    notifyListeners();
  }

  int get totalNotes {
    return _notes.length;
  }
}
