import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_edapt_network_connection_learning/view/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({required Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/employeelogo.jpg')),
        ),
      ),
    );
  }
}
