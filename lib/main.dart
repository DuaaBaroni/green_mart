import 'package:flutter/material.dart';
import 'package:green_mart/features/intro_screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:SplashScreen()
        ),
      ),
    );
  }
}
