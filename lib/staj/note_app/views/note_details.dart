import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/note_app/models/note_model.dart';
import 'package:flutter_learn/staj/note_app/viewmodels/note_app_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<NoteAppViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
        actions: [
          IconButton(
            color: Colors.red,
            onPressed: () {
              context.pop();
              viewModel.deleteNote(note);
            },
            icon: Icon(Icons.delete_outline_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Başlık: ${note.title}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Text("Açıklama: ${note.description}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
