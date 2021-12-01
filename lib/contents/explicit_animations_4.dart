import 'package:animation_tutorials/animated_widget/animated_logo_2.dart';
import 'package:flutter/material.dart';

class ExplicitAnimations4 extends StatefulWidget {
  const ExplicitAnimations4({Key? key}) : super(key: key);

  @override
  _ExplicitAnimations4State createState() => _ExplicitAnimations4State();
}

class _ExplicitAnimations4State extends State<ExplicitAnimations4> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: this
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn)
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
        title: const Text('Explicit Animations 4'),
      ),
      body: Center(
        child: AnimatedLogo2(animation: _animation),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
