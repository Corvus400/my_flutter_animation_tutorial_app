import 'package:animation_tutorials/custom_widget/grow_transition.dart';
import 'package:animation_tutorials/custom_widget/logo_widget.dart';
import 'package:flutter/material.dart';

class ExplicitAnimations3 extends StatefulWidget {
  const ExplicitAnimations3({Key? key}) : super(key: key);

  @override
  _ExplicitAnimations3State createState() => _ExplicitAnimations3State();
}

class _ExplicitAnimations3State extends State<ExplicitAnimations3> with SingleTickerProviderStateMixin {
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
    ).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animations 3'),
      ),
      body: Center(
        child: GrowTransition(
          child: const LogoWidget(),
          animation: _animation,
        )
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
