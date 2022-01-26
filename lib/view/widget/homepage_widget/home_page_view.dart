import 'package:cube/view/theme/theme.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

// local import 'package:'
// import 'package:cube/view/theme/theme.dart';

class HomePageWidget extends StatelessWidget {
  HomePageWidget({Key? key}) : super(key: key);

  //drawer global key
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _drawerKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const Drawer(child: Text('drawer')),
      // appBar: AppBar(
      //   backgroundColor: Colors.black26,
      //   title: Text('Cube',
      //       style: GoogleFonts.lato(
      //           color: Colors.blue[800],
      //           fontSize: 40.0,
      //           fontWeight: FontWeight.w900)),
      //   elevation: 0,
      //   leading: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 3),
      //     child: IconButton(
      //       iconSize: 25,
      //       color: Colors.black54,
      //       icon: const FaIcon(FontAwesomeIcons.bars),
      //       onPressed: _openDrawer,
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 2.0),
      //       child: IconButton(
      //         iconSize: 25,
      //         color: Colors.black54,
      //         icon: const FaIcon(FontAwesomeIcons.atom),
      //         onPressed: () {
      //           print('tapped');
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          // stretch: true,
          pinned: true,
          // floating: true,
          // snap: true,
          backgroundColor: Colors.teal,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Cube', style: CubeTheme.lightTextTheme.headline5),
          ),
          expandedHeight: 90,
          actions: const [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.atom, color: Colors.black),
              onPressed: null,
            )
          ],
          // bottom: PreferredSize(
          //     preferredSize: Size.fromHeight(20.0), child: Text('')),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
            child: Center(
              child: Text('Scroll to see the SliverAppBar in effect.'),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
          childCount: 20,
        )),
      ]),

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     // main container
      //     // width: MediaQuery.of(context).size.width,
      //     // height: MediaQuery.of(context).size.height * 0.3,
      //     // color: Colors.green,
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      //       child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             SizedBox(
      //                 // left inside ~ within container
      //                 width: MediaQuery.of(context).size.width / 2,
      //                 // color: Colors.red,
      //                 child: Padding(
      //                   padding: const EdgeInsets.symmetric(
      //                       horizontal: 6.0, vertical: 6.0),
      //                   child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         const Text('image'),
      //                         Column(
      //                           mainAxisAlignment: MainAxisAlignment.start,
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: const [
      //                             Text('image'),
      //                             Text('time'),
      //                           ],
      //                         ),
      //                         const Text('verified')
      //                       ]),
      //                 )),

      //             //  start of follow tab
      //             Padding(
      //               padding: const EdgeInsets.all(2),
      //               child: TextButton(
      //                   onPressed: () {},
      //                   child: Container(
      //                     padding: const EdgeInsets.symmetric(
      //                         horizontal: 15.0, vertical: 5),
      //                     decoration: const BoxDecoration(
      //                         color: Colors.grey,
      //                         borderRadius:
      //                             BorderRadius.all(Radius.circular(25))),
      //                     child: Text(
      //                       'Follow',
      //                       style: GoogleFonts.lato(
      //                         decorationStyle: TextDecorationStyle.solid,
      //                         // backgroundColor: Colors.,
      //                         fontSize: 13,
      //                         fontWeight: FontWeight.w600,
      //                         color: Colors.black,
      //                       ),
      //                     ),
      //                   )),
      //             ),
      //           ]),
      //     ),
      //     //end of main  line

      //     SizedBox(
      //       // title container
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: const [Text('aaaaa')],
      //         ),
      //       ),
      //     ),
      //     // end of title container

      //     SizedBox(
      //       // image container // add Stack to make it scrollable
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: const [Text('aaaaa')],
      //         ),
      //       ),
      //     ),
      //     // end of image container

      //     Padding(
      //       //  extensions to service
      //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(
      //               width: MediaQuery.of(context).size.width / 6,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: const [
      //                   FaIcon(FontAwesomeIcons.thumbsUp, size: 15),
      //                   FaIcon(FontAwesomeIcons.comment, size: 15),
      //                   FaIcon(FontAwesomeIcons.heart, size: 15),
      //                 ],
      //               )),
      //           SizedBox(
      //             //  start of ellipsis ta
      //             width: MediaQuery.of(context).size.width / 8,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: const [
      //                 FaIcon(FontAwesomeIcons.share, size: 15),
      //                 FaIcon(FontAwesomeIcons.ellipsisH, size: 15),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     //end of service extensions
      //   ],
      // ),
    );
  }
}
