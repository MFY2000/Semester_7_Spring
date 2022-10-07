import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mad_mobile_app/Pages/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splash: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Icon(
          Icons.ac_unit_sharp,
          size: 100,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.amber,
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.slideTransition,
      duration: 100000,
    ));
  }
}
