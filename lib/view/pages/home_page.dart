// handles the home screen
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// local imports
//import 'package:cube/view/widget/homepage/home_app_bar.dart'; // contains the app bar
import 'package:cube/view/widget/homepage_widget/home_page_view.dart'; // contains the home page view
import 'package:cube/view/pages/event_page.dart'; // contains the event page
import 'package:cube/view/pages/notification_page.dart'; // contains the notification page
import 'package:cube/view/pages/user_page.dart'; // contains the user page
import 'package:google_fonts/google_fonts.dart';

// controllers
// import '../../controller/counter_controller.dart';
import '../../controller/home_controller.dart';

// -------------------------------

class HomeScreen extends StatelessWidget {
  HomeScreen(Key? key) : super(key: key);
  // instantiate  home controllers class here
  // final SomethingController controlle = Get.put(SomethingController());
  final HomePageViewController activePage =
      Get.put(HomePageViewController()); // instantiate the home page controller
  final SearchTextController searchBarController =
      Get.put(SearchTextController());

  // --- controller class instance end here ---

  void something() {
    print('follow club');
  }

  final List<Widget> screenList = [
    HomePageWidget(),
    Event(),
    const UserPage(),
    const NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // color: Colors.black12,
          // padding: const EdgeInsets.only(top: 40),
          child: Obx(() => screenList[activePage.currentPageIndex.value])),

      // start bottom navigation bar
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 1,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blue[800],
            currentIndex: activePage.currentPageIndex.value,
            onTap: activePage.currentScreen,
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.newspaper, size: 20),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.search, size: 20),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.solidBell, size: 20),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user, size: 20), label: 'User'),
            ],
          )),

      // Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       Obx(() => Text("${controlle.count}")),
      //       ElevatedButton(
      //           onPressed: controlle.increment, child: const Text('add')),
      //       ElevatedButton(
      //         onPressed: controlle.decrement,
      //         child: const Text('minus'),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
