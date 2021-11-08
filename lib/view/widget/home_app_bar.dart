// handles the home app bar widget

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(190.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 60.0),
      // preferredSize: preferredSize,
      child: Container(
          color: Colors.black12,
          child: SafeArea(
            // bottom: true,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 4.0),
                    child: IconButton(
                        iconSize: 25.0,
                        icon: const Icon(Icons.menu_outlined),
                        onPressed: () => {print('Menu button pressed')}),
                  ),
                  const SizedBox(
                    height: 70.0,
                    width: 300.0,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
                      child: TextField(
                        // textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          focusColor: Colors.green,
                          prefixIcon: Icon(Icons.search),
                          // labelText: 'Search',
                          filled: true,
                          fillColor: Colors.white38,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          hintText: 'search',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
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
