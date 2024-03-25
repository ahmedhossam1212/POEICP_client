import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:poeicp_client/core/utils/media_query_values.dart';
import 'package:poeicp_client/presntation/view/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 4500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/splash.jpeg",
                fit: BoxFit.cover,
                height: context.height * 1,
              ),
              Lottie.asset("assets/animations/loading.json",
                  width: context.width * 0.6),
            ],
          ),
        ],
      )),
    );
  }
}
