import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pahtan_24_items/app/modules/pages/benefits.dart';
import 'package:pahtan_24_items/app/modules/pages/home.dart';
import 'package:pahtan_24_items/app/modules/pages/myanmar.dart';
import 'package:pahtan_24_items/app/modules/pages/wide.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => _buildScreens()[controller.currentIndex.value]),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.brown,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey[100],
            currentIndex: controller.currentIndex.value,
            onTap: (index) => controller.currentIndex.value = index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_open), label: "၂၄ပစ္စည်း"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.details), label: "အကျယ်"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.transfer_within_a_station_outlined),
                  label: "မြန်မာပြန်"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info), label: "အကျိုးကျေးဇူးများ"),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const Home(),
      const Wide(),
      const Myanmar(),
      const Benefits(),
    ];
  }
}
