import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  with SingleTickerProviderStateMixin{
/// ANIMATION CONTROLLER
  late AnimationController _controller;
  /// ANIMATION
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    /// INITIALING THE CONTROLLER
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 2));
    /// INITIALING THE ANIMATION
    _animation= CurvedAnimation(parent: _controller, curve: Curves.fastEaseInToSlowEaseOut);
    /// STARTING THE ANIMATION
    _controller.forward();
    /// TIMER FOR SPLASH DURATION
    Timer( const Duration(seconds: 3),(){
      /// NAVIAGTING TO LOGIN SCREEN
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));

    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ScaleTransition(
        scale: _animation,
        child: Center(
          child: Hero(
            tag: "logo",
            child: SizedBox(
              height: 200,
                width: 200,
                child: Image.asset("assets/logo.png",color: Theme.of(context).indicatorColor,)),
          ),
        ),
      ),
    );
  }
}
