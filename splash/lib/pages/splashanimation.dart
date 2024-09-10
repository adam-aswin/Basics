import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:splash/pages/splash2.dart';

class SplashanimationWork extends StatefulWidget {
  const SplashanimationWork({super.key});

  @override
  State<SplashanimationWork> createState() => _SplashanimationWorkState();
}

class _SplashanimationWorkState extends State<SplashanimationWork> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(milliseconds: 800),
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: 180,
            child: LottieBuilder.asset(
              "Lottie/Animation.json",
            ),
          )
        ],
      ),
      nextScreen: Splash2(),
      backgroundColor: Colors.black,
      splashIconSize: 500,
    );
  }
}
