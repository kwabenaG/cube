// handles homepage statechange
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// local imports

class HomePageViewController extends GetxController {
  // handles the current index fot the bottom navigation bar icon list
  final currentPageIndex = 0.obs;
  void currentScreen(int index) {
    currentPageIndex.value = index;
  }
}
