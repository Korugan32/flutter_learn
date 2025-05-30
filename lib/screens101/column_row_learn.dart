import 'package:flutter/material.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column And Row"),),
      body: Column(
        children: [
          Expanded(flex: 5, child: Row(children: [
            Expanded(flex: 1, child: Container(color: Colors.greenAccent)),
            Expanded(flex: 1, child: Container(color: Colors.green)),
            Expanded(flex: 1, child: Container(color: Colors.amberAccent)),
            Expanded(flex: 1, child: Container(color: Colors.deepPurpleAccent)),
            Expanded(flex: 1, child: Container(color: Colors.blue)),
          ],)),
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(flex: 1, child: Container(color: Colors.blue)),
          Expanded(flex: 1, child: Container(color: Colors.deepPurple)),
          Expanded(flex: 1, child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}
