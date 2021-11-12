// handles the event

import 'package:flutter/material.dart';

// local imports
import 'package:cube/view/widget/home_app_bar.dart';

class Event extends StatelessWidget {
  const Event({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Event'),
      ),
    );
  }
}
