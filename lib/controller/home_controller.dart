// handles homepage statechange
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// local imports

class SearchBarTimes extends GetxController {
  Widget searchTimes() {
    return const Icon(FontAwesomeIcons.accessibleIcon);
  }
}

class HomePageViewController extends GetxController {
  // handles the current index fot the bottom navigation bar icon list
  final currentPageIndex = 0.obs;
  void currentScreen(int index) {
    currentPageIndex.value = index;
  }
}

Widget searchBarTimes() {
  return GetBuilder<SearchBarTimes>(
    init: SearchBarTimes(),
    builder: (_) => _.searchTimes(),
  );
}

class SearchTextController extends GetxController {
  // text controller for the search bar
  final searchClubInfo = ''.obs;

  final color = Colors.white.obs;

  // bool searchTimes() => Icon(Icons.ac_unit);
  // const FaIcon(FontAwesomeIcons.times, size: 15, color: Colors.black54);

  void showSearchTimes() {
    Widget searchTimes =
        const Icon(Icons.ac_unit_sharp, size: 15, color: Colors.black54);
    // const FaIcon(Icons.times, size: 15, color: Colors.black54);
  }

  void searchTextChange(String text) {
    searchClubInfo.value = text;
  }

  GlobalKey<ScaffoldState> searchBarKey = GlobalKey<ScaffoldState>();
  // text controller for the search bar
  late final TextEditingController searchController;

  Widget searchBarItem() {
    return
        // Obx(
        //   () =>
        SizedBox(
      height: 30,
      width: 300,
      child: TextFormField(
        // onTap: showSearchTimes,
        // controller: searchBar.searchController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: IconButton(
              // ignore: avoid_print
              onPressed: () {
                print('tapped');
              },
              icon: const FaIcon(FontAwesomeIcons.times, size: 15),
            ),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: FaIcon(FontAwesomeIcons.search,
                size: 15, color: Colors.black54),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.blue,
              // width: 2.0,
            ),
          ),

          // labelText: 'Search',
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          hintText: 'search cube',
          hintStyle: const TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black54,
            fontSize: 18.0,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ),
    );
    //);
  }

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
    searchController
        .dispose(); // dispose the search text controller from the memory
  }
}
