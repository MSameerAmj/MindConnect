import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindconnect/consts/images.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:mindconnect/controllers/HomeController.dart';
import 'package:mindconnect/views/ExcercisesScreen.dart';
import 'package:mindconnect/views/ForumScreen.dart';
import 'package:mindconnect/views/homeScreen.dart';
import 'package:mindconnect/views/profilescreen.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var NavBaritem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            homeimg,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            mindimg,
            width: 26,
          ),
          label: activity),
      BottomNavigationBarItem(
          icon: Image.asset(
            forumimg,
            width: 26,
          ),
          label: forum),
      BottomNavigationBarItem(
          icon: Image.asset(
            profileimg,
            width: 26,
          ),
          label: profile),
    ];
    var NavBody = [
      const Homescreen(),
      const Excercisesscreen(),
      const Forumscreen(),
      const Profilescreen()
    ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Obx(
                  () => NavBody.elementAt(controller.currentNavIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: textColor,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Vx.white,
            items: NavBaritem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          )),
    );
  }
}
