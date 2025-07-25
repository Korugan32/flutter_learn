import 'package:flutter/material.dart';

class ProjectFilledButtonComponent extends StatelessWidget {
  const ProjectFilledButtonComponent({super.key, required this.text, this.onPressed, required this.color});
  final String text;
  final VoidCallback? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        minimumSize: Size(0, 50),
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
      child: Center(child: SizedBox(child: Text(text, maxLines: 1))),
    );
  }
}
