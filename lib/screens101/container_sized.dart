import 'package:flutter/material.dart';

class ContainerSizedView extends StatelessWidget {
  const ContainerSizedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Deneme111"), shadowColor: Colors.black),
      body: Column(
        children: [
          SizedBox(width: 200, height: 200, child: Text('a' * 100)),
          SizedBox(width: 200, height: 200, child: Text('a' * 100)),
          SizedBox(width: 200, height: 200, child: Text('a' * 100)),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: ProjectUtility.decoration,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: ProjectUtility.decoration,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration decoration = BoxDecoration(
    color: Colors.amber,
    shape: BoxShape.rectangle,
    boxShadow: [
      BoxShadow(color: Colors.black, blurRadius: 20, offset: Offset(0.2, 1)),
    ],
    borderRadius: BorderRadius.circular(10),
  );
}
