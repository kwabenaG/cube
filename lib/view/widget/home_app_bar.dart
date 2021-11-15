// handles the home app bar widget

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// local imports
import 'package:cube/controller/home_controller.dart';

// ignore: use_key_in_widget_constructors
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // const CustomAppBar({Key? key, required this.drawer}) : super(key: key);

  final SearchTextController searchBar = Get.put(SearchTextController());

  //end text controller for search bar

  @override
  Size get preferredSize => const Size.fromHeight(190.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 60.0),
      // preferredSize: preferredSize,
      child: Container(
          color: Colors.black26,
          child: SafeArea(
            // bottom: true,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 4.0),
                    child: IconButton(
                        iconSize: 25.0,
                        icon: const Icon(Icons.menu_outlined),
                        onPressed: () {
                          draw(context);
                        }),
                  ),
                  SizedBox(
                    // for textfield
                    height: 70.0,
                    width: 300.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 15.0),
                      child: TextFormField(
                        // onChanged:
                        onTap: () {
                          print('tapped');
                        },
                        controller: searchBar.searchController,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 12.0),
                            child: FaIcon(FontAwesomeIcons.search,
                                size: 15, color: Colors.black54),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              // width: 2.0,
                            ),
                          ),

                          // labelText: 'Search',
                          filled: true,
                          fillColor: Colors.white38,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          hintText: 'search',
                          hintStyle: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black54,
                            fontSize: 18.0,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}

Widget draw(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
