// handles the home screen
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// local imports
import 'package:cube/view/widget/home_app_bar.dart'; // contains the app bar
import 'package:cube/view/widget/home_page_view.dart'; // contains the home page view
import 'package:cube/view/pages/event.dart'; // contains the event page
import 'package:cube/view/pages/user.dart'; // contains the user page

// controllers
import '../../controller/counter_controller.dart';
import '../../controller/home_controller.dart';

// -------------------------------

class HomeScreen extends StatelessWidget {
  HomeScreen(Key? key) : super(key: key);
  // instantiate  home controllers class here
  // final SomethingController controlle = Get.put(SomethingController());
  final HomePageViewController activePage = Get.put(HomePageViewController());

  // --- controller class instance end here ---

  //drawer global key
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _drawerKey.currentState!.openDrawer();
  }

  void something() {
    print('follow club');
  }

  final List<Widget> screenList = const [HomePageWidget(), Event(), UserPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const Drawer(child: Text('drawer')),
      appBar: CustomAppBar(),
      body: Container(
          child: Obx(() => screenList[activePage.currentPageIndex.value])),

      // start bottom navigation bar
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            // backgroundColor: Colors.white,
            selectedItemColor: Colors.blue[800],
            // unselectedItemColor: Colors.grey,
            // selectedIconTheme: IconThemeData(color: Colors.black),
            // unselectedIconTheme: IconThemeData(color: Colors.grey),
            // selectedLabelStyle: TextStyle(color: Colors.black),
            // unselectedLabelStyle: TextStyle(color: Colors.grey),
            // type: BottomNavigationBarType.fixed,
            currentIndex: activePage.currentPageIndex.value,
            onTap: activePage.currentScreen,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Events',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.add_box),
              //   label: 'Add',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.favorite),
              //   label: 'Favorite',
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
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
