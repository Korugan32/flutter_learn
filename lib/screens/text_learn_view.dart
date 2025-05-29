import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  final ProjectTextStyles styles = ProjectTextStyles();
  
  final String name = "Veli2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          ("Welcome $name"),
          maxLines: 1,
          style: 
        ),
      ),
    );
  }
}


class ProjectTextStyles extends TextStyle {
    static TextStyle deneme =  const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.amber,
          );
}
