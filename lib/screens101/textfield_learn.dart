import 'package:flutter/material.dart';

class TextfieldLearnView extends StatefulWidget {
  const TextfieldLearnView({super.key});
  final String _appBarTitle = "TextField Learn";
  @override
  State<TextfieldLearnView> createState() => _TextfieldLearnViewState();
}

class _TextfieldLearnViewState extends State<TextfieldLearnView> {
  FocusNode focusNodeOne = FocusNode();
  FocusNode focusNodeTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._appBarTitle),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              focusNode: focusNodeOne,
              textInputAction: TextInputAction.next,
              autocorrect: true,
              autofillHints: [
                AutofillHints.email
              ],
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                label: Text("Mail"),
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              focusNode: focusNodeTwo,
              autocorrect: true,
              autofillHints: [
                AutofillHints.email
              ],
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                label: Text("Mail"),
                border: OutlineInputBorder()
              ),
            ),
          ),
        ],
      ),
    );
  }
}