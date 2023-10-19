import 'package:get/get.dart';
import 'package:vimes_test/presentation/controllers/receipt/receipt_binding.dart';

import 'package:vimes_test/presentation/pages/home/home_page.dart';
import 'package:vimes_test/presentation/pages/splash/splash_page.dart';

part 'app_route.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(name: _Paths.SPLASH, page: () => SplashPage()),
    GetPage(
        name: _Paths.HOME,
        page: () => HomePage(),
        bindings: [ReceiptBinding()]),
  ];
}
