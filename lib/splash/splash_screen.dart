import 'package:coffeeshopapp/layout/presentation/screens/layout_screen.dart';
import 'package:flutter/material.dart';

import '../layout/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushNamed(context, LayoutScreen.routename);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Image(image: AssetImage("assets/images/High-Fidelity ( Onboarding )-1.png"),fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
