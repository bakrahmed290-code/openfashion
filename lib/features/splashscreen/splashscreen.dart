import 'dart:async';
import 'package:flutter/material.dart';
import 'package:openfashion/core/widgets/stack_app.dart';
import 'package:openfashion/features/home/ui/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with TickerProviderStateMixin {
  late AnimationController fadeController;
  late Animation<double> fadeAnimation;

  late AnimationController slideController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    /// Fade Animation
    fadeController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: fadeController, curve: Curves.easeIn));

    fadeController.forward();

    /// Slide Animation
    slideController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.4),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: slideController, curve: Curves.easeOut));

    slideController.forward();

    /// Navigate to Home after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    fadeController.dispose();
    slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 120),

              /// Animated Logo in Stack
              SlideTransition(
                position: slideAnimation,
                child: FadeTransition(
                  opacity: fadeAnimation,
                  child: SizedBox(height: 200, child: stackapp()),
                ),
              ),

              SizedBox(height: 40),

              /// Animated Image
              FadeTransition(
                opacity: fadeAnimation,
                child: Image.asset('assets/images/Group.png', width: 250),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
