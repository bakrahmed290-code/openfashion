import 'package:flutter/material.dart';

class stackapp extends StatelessWidget {
  const stackapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 20,
          right: 0,
          left: 0,
          child: Image.asset('assets/images/10.png', width: 100, height: 150),
        ),
        Positioned(
          top: 40,
          right: 0,
          left: 0,
          child: Image.asset(
            'assets/images/October.png',
            width: 50,
            height: 50,
          ),
        ),
        Positioned(
          top: 100,
          right: 0,
          left: 0,
          child: Image.asset(
            'assets/images/Collection.png',
            width: 15,
            height: 15,
          ),
        ),
      ],
    );
  }
}
