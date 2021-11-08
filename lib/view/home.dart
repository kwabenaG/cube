// handles the home screen
import 'package:cube/view/widget/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// local imports
import 'widget/home_app_bar.dart';

// controllers
import '../controller/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(Key? key) : super(key: key);
  final SomethingController controlle = Get.put(SomethingController());

  // HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Column(children: const [Text('Something')])

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
