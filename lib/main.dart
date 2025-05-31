import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/note_app_demo.dart';
import 'package:flutter_learn/demos/personal_demo.dart';
import 'package:flutter_learn/demos/stack_app_demo.dart';
import 'package:flutter_learn/screens101/appbar_learn.dart';
import 'package:flutter_learn/screens101/buttton_learn.dart';
import 'package:flutter_learn/screens101/card_learn.dart';
import 'package:flutter_learn/screens101/column_row_learn.dart';
import 'package:flutter_learn/screens101/container_sized.dart';
import 'package:flutter_learn/screens101/custom_widget_learn.dart';
import 'package:flutter_learn/screens101/icon_learn.dart';
import 'package:flutter_learn/screens101/image_learn.dart';
import 'package:flutter_learn/screens101/indicator_learn.dart';
import 'package:flutter_learn/screens101/list_tile_learn.dart';
import 'package:flutter_learn/screens101/page_view_learn.dart';
import 'package:flutter_learn/screens101/scaffold_learn.dart';
import 'package:flutter_learn/screens101/stack_learn.dart';
import 'package:flutter_learn/screens101/statefull_learn.dart';
import 'package:flutter_learn/screens101/stateless_learn.dart';
import 'package:flutter_learn/screens101/text_learn_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
      // .copyWith(
      //   appBarTheme: AppBarTheme(
      //     centerTitle: true,
      //     backgroundColor: Colors.orange
      //   )
      // ),
      ,
      home: PageViewLearnView()
    );
  }
}
