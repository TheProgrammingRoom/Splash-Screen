import 'package:flutter/material.dart';
import 'package:splash/home.dart';
import 'package:splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:  SplashScreen(),
      initialRoute: "splash",
      routes: {
        'splash': (context) => const SplashScreen(),
        'home': (context) => const Home(),
      },
    );
  }
}

