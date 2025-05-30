import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(text: "Korugan"),
          _CustomCard(text: "Github"),
          _CustomCard(text: "Flutter"),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        height: 80,
        width: 500,
        child: Center(
          child: Text(text, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
