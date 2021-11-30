import 'package:animation_tutorials/routes.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FlutterAnimationTutorialApp extends StatefulWidget {
  const FlutterAnimationTutorialApp({Key? key}) : super(key: key);

  @override
  State<FlutterAnimationTutorialApp> createState() => _FlutterAnimationTutorialAppState();
}

class _FlutterAnimationTutorialAppState extends State<FlutterAnimationTutorialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: kRoutes,
    );
  }
}