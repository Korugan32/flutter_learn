import 'package:flutter/material.dart';

class ListViewBuilderLearnView extends StatefulWidget {
  const ListViewBuilderLearnView({super.key});

  @override
  State<ListViewBuilderLearnView> createState() => _ListViewBuilderLearnViewState();
}

class _ListViewBuilderLearnViewState extends State<ListViewBuilderLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        print(index);
        return Placeholder(
          color: Colors.amber,
        );
      },),
    );
  }
}