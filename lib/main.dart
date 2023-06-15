
import 'package:BallBall/src/presentation/onboadrding/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BallBall',
      debugShowCheckedModeBanner: false,
      home: OnboadrdingPage()
    );
  }
}
