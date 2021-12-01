import 'package:flutter/material.dart';

class ExplicitAnimations1 extends StatefulWidget {
  const ExplicitAnimations1({Key? key}) : super(key: key);

  @override
  _ExplicitAnimations1State createState() => _ExplicitAnimations1State();
}

class _ExplicitAnimations1State extends State<ExplicitAnimations1> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this
    );
    _animation = Tween<double>(
      begin: 0,
      end: 300
    )
    .animate(_controller)
    ..addListener(() {
      setState(() {
        // NOP
      });
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animations 1'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: _animation.value,
          width: _animation.value,
          child: const FlutterLogo(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
