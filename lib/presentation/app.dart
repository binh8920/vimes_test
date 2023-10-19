import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vimes_test/presentation/controllers/receipt/receipt_binding.dart';
import 'package:vimes_test/presentation/routes/app_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      getPages: AppPages.routes,
      initialRoute: Routes.SPLASH,
      initialBinding: ReceiptBinding(),
      //locale: TranslationService.locale,
      defaultTransition: Transition.native,
    );
  }
}
