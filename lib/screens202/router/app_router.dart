import 'package:flutter_learn/demos/design_demos/blur_demo.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/crypto_service.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/home_page.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/home_view_model.dart';
import 'package:flutter_learn/screens202/router/app_routes.dart';
import 'package:flutter_learn/staj/note_app/models/note_model.dart';
import 'package:flutter_learn/staj/note_app/views/note_adding.dart';
import 'package:flutter_learn/staj/note_app/views/note_app_screen.dart';
import 'package:flutter_learn/staj/note_app/views/note_details.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: "/note",
  routes: [
    GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.name,
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (context) => HomeViewModel(
            // CryptoService'in somut bir örneğini oluşturup ViewModel'e veriyoruz.
            cryptoService: CryptoService(),
          )..fetchCryptoTickers(),
          child: const HomePage(),
      );
      },
    ),
    GoRoute(
      path: AppRoute.secondPage.path,
      name: AppRoute.secondPage.name,
      builder: (context, state) {
        return BlurDemoView();
      },
    ),
    GoRoute(path: "/note", builder: (context,state){
      return NoteAppScreen();
    }),
    GoRoute(path: "/notedetail", builder: (context,state){
      final data = state.extra as NoteModel;
      return NoteDetails(note: data);
    }),
    GoRoute(path: "/noteadd", builder: (context,state){
      return NoteAdding();
    }),
  ],
);