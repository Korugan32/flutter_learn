import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(height:400,color : Colors.amber),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(height:200,color : Colors.black),
          ),
          Positioned(top: 150,bottom: 150,left: 150,right: 150,child: Container(color: Colors.blue)),
          Positioned(top: 180,bottom: 180,left: 180,right: 180,child: Container(color: Colors.red))
        ],
      ),
    );
  }
}