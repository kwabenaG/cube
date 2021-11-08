import 'package:flutter/material.dart';

// custom imports
import 'package:get/get.dart';

import 'package:cube/view/screen/all_screen.dart';

void main() {
  runApp(const CubeApp());
}

class CubeApp extends StatelessWidget {
  const CubeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false);
  }
}
