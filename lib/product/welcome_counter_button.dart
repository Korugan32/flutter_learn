import 'package:flutter/material.dart';

class WelcomeCounterButton extends StatefulWidget {
  const WelcomeCounterButton({super.key});

  @override
  State<WelcomeCounterButton> createState() => _WelcomeCounterButtonState();
}

class _WelcomeCounterButtonState extends State<WelcomeCounterButton> {

  int _welcomeCounter = 0;

  void _updateCounter() {
    setState(() {
      _welcomeCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: _updateCounter,
            child: Text('Merhaba $_welcomeCounter'),
          );
  }
}