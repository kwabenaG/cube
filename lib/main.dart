import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// custom imports
import 'package:cube/view/screen/screen.dart';
import 'package:cube/view/theme/theme.dart';

void main() {
  runApp(const CubeApp());
}

class CubeApp extends StatelessWidget {
  const CubeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CubeTheme.lightTheme();
    final themeDark = CubeTheme.darkTheme();

    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: theme,
        // darkTheme: themeDark,
        home: HomeScreen(key),
        debugShowCheckedModeBanner: false);
  }
}
