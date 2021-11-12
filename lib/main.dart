import 'package:flutter/material.dart';

// custom imports
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cube/view/screen/screen.dart';

void main() {
  runApp(const CubeApp());
}

class CubeApp extends StatelessWidget {
  const CubeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            secondaryHeaderColor: Colors.green[100],

            // Define the default font family.
            fontFamily: 'Roboto',
            primaryTextTheme: GoogleFonts.robotoTextTheme(
              Theme.of(context).textTheme,
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              elevation: 0,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
            )),
        home: HomeScreen(key),
        debugShowCheckedModeBanner: false);
  }
}
