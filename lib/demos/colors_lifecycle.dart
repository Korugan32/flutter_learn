import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/colors_demo.dart';

class ColorsLifecycleView extends StatefulWidget {
  const ColorsLifecycleView({super.key});

  @override
  State<ColorsLifecycleView> createState() => _ColorsLifecycleViewState();
}

class _ColorsLifecycleViewState extends State<ColorsLifecycleView> {
  Color? backgroundColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: _setBackgroundColor, icon: Icon(Icons.change_circle_outlined)),
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorsDemoView(backgroundColor: backgroundColor)),
        ],
      ),
    );
  }

  void _setBackgroundColor() {
    setState(() {
      backgroundColor = Colors.green;
    });
  }
}
