import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:style_guide_module/utils/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:style_guide_module/utils/variableSet.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<String> navBarItems = [
    StringSet.home,
    StringSet.machine,
    StringSet.numbers,
    StringSet.thinking
  ];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var dimentions = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Coolors.coverColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: dimentions.height * 0.9,
              child: Image(
                image: NetworkImage(UrlSet.blueMachine),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(29.5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: (dimentions.width - 2 * IntSet.defaultPadding) / 2,
                      height: 65,
                      child: Container(
                        child: Image(
                          image: AssetImage(
                              'assets/images/rigetti-logo-transperent.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: (dimentions.width - 2 * IntSet.defaultPadding) / 2,
                      height: 50,
                      child: Container(
                        width: 560,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 370,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    StringSet.why,
                                    style: TextStyle(
                                      fontFamily: 'Objektiv-Mk3-Medium',
                                      color: Coolors.canvasColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    StringSet.what,
                                    style: TextStyle(
                                      fontFamily: 'Objektiv-Mk3-Medium',
                                      color: Coolors.canvasColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    StringSet.about,
                                    style: TextStyle(
                                      fontFamily: 'Objektiv-Mk3-Medium',
                                      color: Coolors.canvasColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    StringSet.careers,
                                    style: TextStyle(
                                      fontFamily: 'Objektiv-Mk3-Medium',
                                      color: Coolors.canvasColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.search,
                                    color: Coolors.canvasColor,
                                  ),
                                ],
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero)),
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 1.75,
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 13.75, horizontal: 7),
                                child: Text(
                                  StringSet.quantumButton,
                                  style: TextStyle(
                                    fontFamily: 'GTMono',
                                    fontWeight: FontWeight.w700,
                                    color: Coolors.canvasColor,
                                    fontSize: 16.25,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: dimentions.height / 2.40,
              child: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Container(
                  height: 125,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringSet.home,
                        style: TextStyle(
                          fontFamily: 'GTMono',
                          fontWeight: FontWeight.bold,
                          color: Coolors.primarytextColor,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        StringSet.machine,
                        style: TextStyle(
                          fontFamily: 'GTMono',
                          fontWeight: FontWeight.bold,
                          color: Coolors.primarytextColor,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        StringSet.numbers,
                        style: TextStyle(
                          fontFamily: 'GTMono',
                          fontWeight: FontWeight.bold,
                          color: Coolors.primarytextColor,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        StringSet.thinking,
                        style: TextStyle(
                          fontFamily: 'GTMono',
                          fontWeight: FontWeight.bold,
                          color: Coolors.primarytextColor,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: dimentions.height / 2.5,
              left: dimentions.width / 5.5,
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText(
                    StringSet.thinkQuantum,
                    speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                      fontFamily: 'Objektiv-Mk3-Medium',
                      fontWeight: FontWeight.bold,
                      color: Coolors.canvasColor,
                      fontSize: dimentions.width * 0.085,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
