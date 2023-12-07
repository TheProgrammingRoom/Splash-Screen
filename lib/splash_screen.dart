import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  //Create by TheProgrammingRoom
  //Tutorials on my Youtube

  //Instagram: @the.programming.room

  //Youtube: The Programming Room

  //Github: TheProgrammingRoom

  @override
  void initState() {
    super.initState();
    _move();
  }

  _move() async{
    await Future.delayed( const Duration(seconds: 2), (){});

    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, 'home');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF186b70),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png",
              height: 200,
            ),
            const Text(
              "L-Books",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Color(0xFFf1c94f)
              ),
            ),
            SpinKitThreeBounce(
              size: 30,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFf1c94f)
                    ),
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}