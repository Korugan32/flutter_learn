import 'package:flutter/material.dart';

class LoginMethodComponent extends StatelessWidget {
  const LoginMethodComponent({super.key, required this.icon, required this.text, this.iconColor = Colors.black});
  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 120,
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: iconColor),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}