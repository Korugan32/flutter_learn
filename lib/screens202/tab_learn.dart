import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/design_demos/blur_demo.dart';
import 'package:flutter_learn/demos/note_app_demo.dart';
import 'package:flutter_learn/demos/personal_demo.dart';
import 'package:flutter_learn/demos/stack_app_demo.dart';

class TabLearnView extends StatefulWidget {
  const TabLearnView({super.key});

  @override
  State<TabLearnView> createState() => _TabLearnViewState();
}

class _TabLearnViewState extends State<TabLearnView> with TickerProviderStateMixin {
  late final TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[900],
          onPressed: () {
            _controller.animateTo(_MyTabViews.home.index);
          },
          shape: CircleBorder(),
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.blue,
            controller: _controller,
            tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            PersonalDemoView(),
            BlurDemoView(),
            NoteAppDemoView(),
            StackAppDemoView()
          ],
        ),
      ),
    );
  }
}

enum _MyTabViews{
  home,
  settings,
  favorite,
  profile
}