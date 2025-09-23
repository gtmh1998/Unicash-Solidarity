import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: screenWidth * 0.5), 
            SizedBox(height: screenHeight * 0.03),
            Text(
              'Portez les fardeaux les uns des autres et vous accomplirez ainsi la loi de Christ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Galates 6v2',
              style: TextStyle(fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}