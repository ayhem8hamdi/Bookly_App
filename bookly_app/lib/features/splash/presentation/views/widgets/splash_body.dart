import 'package:bookly_app/features/splash/presentation/views/widgets/image_fade_transition.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/text_fade_transition.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    initFadeAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LogoFadeTransition(fadeAnimation: fadeAnimation),
        const SizedBox(height: 4),
        TextFadeTransition(fadeAnimation: fadeAnimation),
      ],
    );
  }

  void initFadeAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);

    animationController.forward();
  }
}
