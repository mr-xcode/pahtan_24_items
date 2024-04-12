import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.brown[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFImageOverlay(
                  borderRadius: BorderRadius.circular(20),
                  width: 150,
                  height: 150,
                  image: const AssetImage("assets/logo.jpeg"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "ပဌါန်း ၂၄ ပစ္စည်း ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                const SizedBox(height: 50),
                const GFLoader(
                  type: GFLoaderType.ios,
                  size: GFSize.SMALL,
                  duration: Durations.extralong4,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Version: 1.0",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Tech4MM Co., Ltd. မှ ဒါနပြု လှူဒါန်းသည်",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
