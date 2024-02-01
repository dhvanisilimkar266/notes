import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen() {
    Timer.periodic(Duration(seconds: 15), (timer) {
      Navigator.of(context).pushReplacementNamed(MyRoutes.home);
      timer.cancel();
    });
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcabdab),
      // backgroundColor: Colors.white.withOpacity(0.9),
      body: Center(
        child: Container(
          height: 550,
          width: 450,
          child: const Image(
            image: NetworkImage(
              'https://pics.craiyon.com/2023-08-05/c4ea0dd479df4495a22ab47667fe6e06.webp',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
