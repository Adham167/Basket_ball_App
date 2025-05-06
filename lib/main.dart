import 'package:basket_ball_app10/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
