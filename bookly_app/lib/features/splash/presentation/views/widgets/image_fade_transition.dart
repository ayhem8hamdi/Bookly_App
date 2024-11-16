import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class LogoFadeTransition extends StatelessWidget {
  const LogoFadeTransition({
    super.key,
    required this.fadeAnimation,
  });

  final Animation<double> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: fadeAnimation,
        child: const Image(image: AssetImage(AssetsData.logo)));
  }
}
