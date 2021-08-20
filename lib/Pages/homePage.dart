import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:style_guide_module/utils/colors.dart';
import 'package:style_guide_module/utils/variableSet.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var dimentions = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Coolors.coverColor,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 671,
            child: Image(
              image: NetworkImage(UrlSet.blueMachine),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(37),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.amber,
                    width: (dimentions.width - 2 * IntSet.defaultPadding) / 2,
                    height: 50,
                    child: Image(
                      image: NetworkImage(
                        UrlSet.rigettiLogoBlue,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    color: Colors.greenAccent[400],
                    width: (dimentions.width - 2 * IntSet.defaultPadding) / 2,
                    height: 50,
                    child: Container(
                      width: 560,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringSet.why,
                              style: TextStyle(
                                fontFamily: 'Objektive-Mk3',
                                color: Coolors.canvasColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              StringSet.what,
                              style: TextStyle(
                                fontFamily: 'Objektive-Mk3',
                                color: Coolors.canvasColor,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              StringSet.about,
                              style: TextStyle(
                                fontFamily: 'Objektive-Mk3',
                                color: Coolors.canvasColor,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              StringSet.careers,
                              style: TextStyle(
                                fontFamily: 'Objektive-Mk3',
                                color: Coolors.canvasColor,
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.search,
                              color: Coolors.canvasColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.only(
      //       right: 100,
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.symmetric(
      //               horizontal: 23.5, vertical: 26.5),
      //           child: Container(
      //             color: Coolors.coverColor,
      //             width: 157,
      //             height: 65.5,
      //             child: Image(
      //               image: NetworkImage(
      //                 UrlSet.rigettiLogoBlue,
      //               ),
      //               fit: BoxFit.contain,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           alignment: Alignment.topCenter,
      //           height: 675,
      //           child: Image(
      //             image: NetworkImage(UrlSet.blueMachine),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 26.5),
      //           child: Container(
      //             width: 400,
      //             height: 65.5,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(
      //                   StringSet.why,
      //                   style: TextStyle(
      //                     fontFamily: 'Objektive-Mk3',
      //                     color: Coolors.canvasColor,
      //                     fontSize: 16,
      //                   ),
      //                 ),
      //                 Text(
      //                   StringSet.what,
      //                   style: TextStyle(
      //                     fontFamily: 'Objektive-Mk3',
      //                     color: Coolors.canvasColor,
      //                     fontSize: 18,
      //                   ),
      //                 ),
      //                 Text(
      //                   StringSet.about,
      //                   style: TextStyle(
      //                     fontFamily: 'Objektive-Mk3',
      //                     color: Coolors.canvasColor,
      //                     fontSize: 18,
      //                   ),
      //                 ),
      //                 Text(
      //                   StringSet.careers,
      //                   style: TextStyle(
      //                     fontFamily: 'Objektive-Mk3',
      //                     color: Coolors.canvasColor,
      //                     fontSize: 18,
      //                   ),
      //                 ),
      //                 Icon(
      //                   CupertinoIcons.search,
      //                   color: Coolors.canvasColor,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
