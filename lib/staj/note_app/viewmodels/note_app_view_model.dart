import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/note_app/models/note_model.dart';

class NoteAppViewModel extends ChangeNotifier {
  final List<NoteModel> _model = [
    NoteModel(title: "Not 1", description: "Bu birinci notun içeriğidir."),
    NoteModel(title: "Not 2", description: "Bu ikinci notun içeriğidir."),
    NoteModel(title: "Not 3", description: "Bu üçüncü notun içeriğidir."),
    NoteModel(title: "Not 4", description: "Bu dördüncü notun içeriğidir."),
    NoteModel(title: "Not 5", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 6", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 7", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 8", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 9", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 10", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 11", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 12", description: "Bu beşinci notun içeriğidir."),
    NoteModel(title: "Not 13", description: "Bu beşinci notun içeriğidir."),
  ];

  List<NoteModel> get model => _model;

  void addNote(NoteModel note) {
    _model.add(note);
    notifyListeners();
  }

  void deleteNote(NoteModel note) {
    _model.remove(note);
    notifyListeners();
  }
}
