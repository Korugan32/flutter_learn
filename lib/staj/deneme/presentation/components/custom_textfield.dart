import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.title, required this.hintText, required this.isSecuredKey});

  final String title;
  final String hintText;
  final bool isSecuredKey;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isSecured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isSecuredKey ? isSecured : false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '${widget.title} boş bırakılamaz';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        labelText: widget.title,
        hintText: widget.hintText,
        suffixIcon: widget.isSecuredKey
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isSecured = !isSecured;
                  });
                },
                child: Icon(isSecured ? Icons.visibility_outlined : Icons.visibility_off_outlined),
              )
            : null,
      ),
    );
  }
}