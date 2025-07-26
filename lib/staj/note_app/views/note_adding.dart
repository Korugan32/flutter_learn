import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/deneme/presentation/components/headline_text.dart';
import 'package:flutter_learn/staj/note_app/models/note_model.dart';
import 'package:flutter_learn/staj/note_app/viewmodels/note_app_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class NoteAdding extends StatefulWidget {
  const NoteAdding({super.key});

  @override
  State<NoteAdding> createState() => _NoteAddingState();
}

class _NoteAddingState extends State<NoteAdding> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Not Ekleme Sayfası")),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              HeadlineText(text: "Not Ekle"),
              NoteTextField(text: "Başlık", controller: _titleController),
              NoteTextField(text: "Açıklama", controller: _descriptionController),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<NoteAppViewModel>().addNote(
                      NoteModel(title: _titleController.text, description: _descriptionController.text),
                    );
                    context.pop();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(child: Text("Not Ekle", style: TextStyle(color: Colors.black),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteTextField extends StatelessWidget {
  const NoteTextField({super.key, required this.text, required this.controller});
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$text Boş Olamaz";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        labelText: text,
      ),
    );
  }
}
