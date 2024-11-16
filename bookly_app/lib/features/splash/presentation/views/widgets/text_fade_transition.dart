import 'package:flutter/material.dart';

class TextFadeTransition extends StatelessWidget {
  const TextFadeTransition({
    super.key,
    required this.fadeAnimation,
  });

  final Animation<double> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FadeTransition(
            opacity: fadeAnimation, child: const Text("Read Free Books")));
  }
}
