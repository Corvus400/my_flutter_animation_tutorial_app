import 'package:flutter/material.dart';

class ExplicitAnimations1 extends StatefulWidget {
  const ExplicitAnimations1({Key? key}) : super(key: key);

  @override
  _ExplicitAnimations1State createState() => _ExplicitAnimations1State();
}

class _ExplicitAnimations1State extends State<ExplicitAnimations1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animations 1'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 300,
          width: 300,
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
