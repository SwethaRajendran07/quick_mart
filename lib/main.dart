import 'package:flutter/material.dart';
import 'package:quick_mart/LoginPage.dart';
import 'package:quick_mart/SplashScreen.dart';

void main() {
  runApp(QuickMartApp());
}

class QuickMartApp extends StatelessWidget {
  const QuickMartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
      },
    );
  }
}
