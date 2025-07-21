import 'package:flutter_learn/demos/design_demos/blur_demo.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/crypto_service.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/home_page.dart';
import 'package:flutter_learn/demos/json_dio_api_demo/home_view_model.dart';
import 'package:flutter_learn/screens202/router/app_routes.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: AppRoute.home.path,
  routes: [
    GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.name,
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (context) => HomeViewModel(
            // CryptoService'in somut bir örneğini oluşturup ViewModel'e veriyoruz.
            // Daha büyük projelerde burası get_it gibi bir locator'dan gelirdi.
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
  ],
);