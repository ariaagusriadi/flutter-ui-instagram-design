import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/app/modules/home/widgets/home.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidgets = [
    HomeWidget(),
    Center(
      child: Text(
        "Search",
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Reels",
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Shop",
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];
}
