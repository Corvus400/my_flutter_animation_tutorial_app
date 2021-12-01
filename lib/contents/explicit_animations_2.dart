import 'package:animation_tutorials/animated_widget/AnimatedLogo.dart';
import 'package:flutter/material.dart';

class ExplicitAnimations2 extends StatefulWidget {
  const ExplicitAnimations2({Key? key}) : super(key: key);

  @override
  _ExplicitAnimations2State createState() => _ExplicitAnimations2State();
}

class _ExplicitAnimations2State extends State<ExplicitAnimations2> with SingleTickerProviderStateMixin {
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
    ).animate(_controller)
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    })
    ..addStatusListener((status) {
      print('$status');
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
        child: AnimatedLogo(animation: _animation),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
