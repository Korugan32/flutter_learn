import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/colors_demo.dart';
import 'package:flutter_learn/demos/colors_lifecycle.dart';
import 'package:flutter_learn/demos/design_demos/blur_demo.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/crypto_service.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/home_page.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/home_view_model.dart';
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
import 'package:flutter_learn/screens101/list_view_builder_learn.dart';
import 'package:flutter_learn/screens101/list_view_learn.dart';
import 'package:flutter_learn/screens101/navigation_learn.dart';
import 'package:flutter_learn/screens101/page_view_learn.dart';
import 'package:flutter_learn/screens101/scaffold_learn.dart';
import 'package:flutter_learn/screens101/stack_learn.dart';
import 'package:flutter_learn/screens101/statefull_learn.dart';
import 'package:flutter_learn/screens101/statefull_lifecycle_learn.dart';
import 'package:flutter_learn/screens101/stateless_learn.dart';
import 'package:flutter_learn/screens101/text_learn_view.dart';
import 'package:flutter_learn/screens101/textfield_learn.dart';
import 'package:flutter_learn/screens202/model_learn_view.dart';
import 'package:flutter_learn/screens202/router/app_router.dart';
import 'package:flutter_learn/screens202/service/service_learn_view.dart';
import 'package:flutter_learn/screens202/tab_learn.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light()
      // .copyWith(
      //   appBarTheme: AppBarTheme(
      //     centerTitle: true,
      //     backgroundColor: Colors.orange
      //   )
      // ),
      ,
      routerConfig: router,
    );
  }
}
