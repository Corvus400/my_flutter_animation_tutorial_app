import 'package:flutter/material.dart';

const _OwlUrl = 'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class ImplicitAnimations1 extends StatefulWidget {
  const ImplicitAnimations1({Key? key}) : super(key: key);

  @override
  _ImplicitAnimations1State createState() => _ImplicitAnimations1State();
}

class _ImplicitAnimations1State extends State<ImplicitAnimations1> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('implicit animations 1'),
      ),
      body: Column(
        children: [
          Image.network(_OwlUrl),
          TextButton(
            child: const Text(
              'Show details',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: () => setState(() {
              opacity = 1;
            }),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: opacity,
            child: Column(
              children: const <Widget>[
                Text('Type: Owl'),
                Text('Age: 39'),
                Text('Employment: None'),
              ],
            ),
          )
        ],
      )
    );
  }
}
