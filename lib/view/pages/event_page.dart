// handles the event

import 'package:cube/controller/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// local imports
//import 'package:cube/view/widget/homepage_widget/home_app_bar.dart';

class Event extends StatelessWidget {
  Event({Key? key}) : super(key: key);

  // ---- start conroller ---- //
  final HomePageViewController activePage = Get.put(HomePageViewController());
  final SearchTextController searchBarController =
      Get.put(SearchTextController());

  //-------------- end of controller --------------//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchBarController.searchBarItem(),
        backgroundColor: Colors.black26,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black54, size: 30),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.cog),
            onPressed: () {
              print('tapped');
            },
          ),
        ],
      ),
      drawer: const Drawer(child: Text('a')),
      body: const Center(
        child: Text('Event'),
      ),
    );
  }
}
