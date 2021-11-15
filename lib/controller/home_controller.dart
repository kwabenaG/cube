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

class SearchTextController extends GetxController {
  // text controller for the search bar
  final searchClubInfo = ''.obs;

  void searchTextChange(String text) {
    searchClubInfo.value = text;
  }

  GlobalKey<ScaffoldState> searchBarKey = GlobalKey<ScaffoldState>();
  // text controller for the search bar
  late final TextEditingController searchController;

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController(); // initializing the controller
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    searchController.dispose(); // dispose the search text controller
  }
}
