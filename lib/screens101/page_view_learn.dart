import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/note_app_demo.dart';
import 'package:flutter_learn/demos/stack_app_demo.dart';
import 'package:flutter_learn/screens101/stack_learn.dart';

class PageViewLearnView extends StatefulWidget {
  const PageViewLearnView({super.key});

  @override
  State<PageViewLearnView> createState() => _PageViewLearnViewState();
}

class _PageViewLearnViewState extends State<PageViewLearnView> {

  int _pageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  final _contorller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: FloatingActionButton(onPressed: (){
              _contorller.previousPage(duration: Duration(seconds: 1), curve: Curves.easeInOutCubicEmphasized);
            }, child: Icon(Icons.arrow_left),),
          ),
          Text(_pageIndex.toString()),
          FloatingActionButton(onPressed: (){
            _contorller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOutCubicEmphasized);
          }, child: Icon(Icons.arrow_right),),
        ],
      ),
      body: PageView(
        onPageChanged: _updatePageIndex,
        controller: _contorller,
        children: [
          StackLearnView(),
          NoteAppDemoView(),
          StackAppDemoView(),
        ],
      ),
    );
  }
}