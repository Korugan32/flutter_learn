import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/personal_demo.dart';
import 'package:flutter_learn/screens101/navigation_details_learn.dart';

class NavigationLearnView extends StatefulWidget {
  const NavigationLearnView({super.key});

  @override
  State<NavigationLearnView> createState() => _NavigationLearnViewState();
}

class _NavigationLearnViewState extends State<NavigationLearnView> with NavigationManager {
  List<int> selectedItems = [];
  void addSelected(int index, bool isAdd) {
    isAdd ? selectedItems.add(index): selectedItems.remove(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidget<bool>(context, NavigationDetailsLearnView(
                isOkey: selectedItems.contains(index),
              ));
              if (response is bool) {
                addSelected(index,response);
              }
            },
            child: Placeholder(color: selectedItems.contains(index) ? Colors.green : Colors.red),
          );
        },
      ),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatePersonalDemo(context, PersonalDemoView());
        },
        child: Icon(Icons.navigation_outlined),
      ),
    );
  }
}

mixin NavigationManager {
  void navigatePersonalDemo(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
      ),
    );
  }

  Future<T?> navigateToWidget<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
