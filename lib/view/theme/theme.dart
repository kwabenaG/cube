// handles all the theme DATA class

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CubeTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    ),
    bodyText2: GoogleFonts.openSans(
      // textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      // ),
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 40,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    headline4: GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    headline5: GoogleFonts.openSans(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
  ); // class variables

  static TextTheme dartkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    ),
    bodyText2: GoogleFonts.openSans(
      // textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      // ),
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 40,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    headline4: GoogleFonts.openSans(
      fontSize: 15,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    headline5: GoogleFonts.openSans(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
  ); // class variables

  // static theme for light version
  static ThemeData lightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        // brightness: Brightness.light,
        textTheme: lightTextTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ));
  }

  // static ThemeData for dark version
  static ThemeData darkTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        textTheme: dartkTextTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
        ));
  }
}
