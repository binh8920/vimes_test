import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:vimes_test/app/configs/app_constants.dart';
import 'package:vimes_test/app/configs/app_text_styles.dart';
import 'package:vimes_test/presentation/routes/app_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      //exit full-screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      //navigate to home
      Get.offNamed(Routes.HOME);
    });
  }

  @override
  Widget build(BuildContext context) {
    //initializing media query (for getting device screen size)
    late Size mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          //app logo
          Positioned(
              left: mq.width * .2,
              top: mq.height * .2,
              width: mq.width * .6,
              child: Image.asset(LocalImagePath.inventoryImg)),
          Positioned(
              bottom: mq.height * .15,
              width: mq.width,
              child: Text(
                'VIMES - PHIẾU NHẬP KHO',
                textAlign: TextAlign.center,
                style: AppTextStyles.title,
              ))
        ],
      ),
    );
  }
}
