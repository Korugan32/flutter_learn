import 'package:flutter/material.dart';

class ColorsDemoView extends StatefulWidget {
  const ColorsDemoView({super.key, required this.backgroundColor});
  final Color? backgroundColor;

  @override
  State<ColorsDemoView> createState() => _ColorsDemoViewState();
}

class _ColorsDemoViewState extends State<ColorsDemoView> {
  @override
  void didUpdateWidget(covariant ColorsDemoView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(_backgroundColor != widget.backgroundColor && widget.backgroundColor != null){
      changeBackgroundColor(widget.backgroundColor!);
    }
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.backgroundColor;
  }
  Color? _backgroundColor = Colors.transparent;
  void changeBackgroundColor(Color color){
    setState(() {
      _backgroundColor = color;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        items: [
        BottomNavigationBarItem(icon: Container(
          height: 10,
          width: 10,
          color: Colors.yellow,
        ), label: "Yellow"),
        BottomNavigationBarItem(icon: Container(
          height: 10,
          width: 10,
          color: Colors.red,
        ), label: "Red"),
        BottomNavigationBarItem(icon: Container(
          height: 10,
          width: 10,
          color: Colors.blue
        ), label: "Blue"),
      ]),
    );
  }

  void _onTap(value) {
        if(value == _MyColors.yellow.index){
          changeBackgroundColor(Colors.yellow);
        }else if(value == _MyColors.red.index){
          changeBackgroundColor(Colors.red);
        }else{
          changeBackgroundColor(Colors.blue);
        }
      }
}

enum _MyColors{
  yellow,
  red,
  blue,
}