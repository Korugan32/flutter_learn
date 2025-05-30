import 'package:flutter/material.dart';

class AppbarLearnView extends StatelessWidget {
  const AppbarLearnView({super.key});

  final String _title = "App Bar Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title, style: TextStyle(color: Colors.white)),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left)),
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [Center(
          child: CircularProgressIndicator(color: Colors.white,),
        )],
      ),
    );
  }
}
