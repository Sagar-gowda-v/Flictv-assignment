import 'package:flutter/material.dart';

class BlinkitLogo extends StatelessWidget {
  const BlinkitLogo({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size * 1.06,
      height: size * 0.82,
      child: Transform.scale(
        scale: 4,
        alignment: Alignment.center,
        child: Image.asset('assets/images/blinkit_logo.png', fit: BoxFit.contain),
      ),
    );
  }
}

