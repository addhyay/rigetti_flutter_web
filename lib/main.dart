import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:style_guide_module/utils/routs.dart';

import 'Pages/homePage.dart';

void main() {
  runApp(StyleGuideApp());
}

class StyleGuideApp extends StatelessWidget {
  const StyleGuideApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        Routes.homePage: (context) => HomePage(),
      },
    );
  }
}
