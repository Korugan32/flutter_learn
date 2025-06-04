import 'package:flutter/material.dart';

class NavigationDetailsLearnView extends StatefulWidget {
  const NavigationDetailsLearnView({super.key, this.isOkey = false});
  final bool isOkey;

  @override
  State<NavigationDetailsLearnView> createState() => _NavigationDetailsLearnViewState();
}

class _NavigationDetailsLearnViewState extends State<NavigationDetailsLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkey);
          },
          icon: widget.isOkey ? Icon(Icons.remove_circle_outline_sharp) : Icon(Icons.done),
          label: widget.isOkey ? Text("Sil") : Text("Tamamla"),
        ),
      ),
    );
  }
}
