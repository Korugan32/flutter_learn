import 'package:flutter/material.dart';

class PasswordTextFieldLearn extends StatefulWidget {
  const PasswordTextFieldLearn({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextFieldLearn> createState() => _PasswordTextFieldLearnState();
}

class _PasswordTextFieldLearnState extends State<PasswordTextFieldLearn> {
  bool isSecure = true;
  final String _text = "Password";
  void _changeVisibility() {
    setState(() {
      isSecure = !isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      autofillHints: [AutofillHints.password],
      controller: widget.controller,
      obscureText: isSecure,
      decoration: InputDecoration(hintText: _text, labelText: _text, suffixIcon: _visibilityIconButton()),
    );
  }

  IconButton _visibilityIconButton() => IconButton(
    onPressed: _changeVisibility,
    icon: AnimatedCrossFade(
      firstChild: Icon(Icons.visibility_outlined),
      secondChild: Icon(Icons.visibility_off_outlined),
      crossFadeState: isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(milliseconds: 300),
    ),
  );
}
