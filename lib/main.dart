import 'package:coffeeshopapp/layout/presentation/manger/layout_provider.dart';
import 'package:coffeeshopapp/layout/presentation/screens/coffee-deatils.dart';
import 'package:coffeeshopapp/layout/presentation/screens/home_screen.dart';
import 'package:coffeeshopapp/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'layout/presentation/screens/layout_screen.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => LayoutProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        HomeScreen.routename: (context) => const HomeScreen(),
        LayoutScreen.routename: (context) => const LayoutScreen(),
        CoffeeDetailsScreen.routename: (context) => CoffeeDetailsScreen(
          name: '',
          description: '',
          price: 0,
          image: '',
          rating: 0,
          desc: '',
        ),
      },
    );
    ;
  }
}
