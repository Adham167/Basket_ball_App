import 'package:basket_ball_app10/cubit/counter_cubit.dart';
import 'package:basket_ball_app10/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}
