import 'package:basket_ball_app10/cubit/counter_cubit.dart';
import 'package:basket_ball_app10/cubit/counter_state.dart';
import 'package:basket_ball_app10/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Points Counter"),
            backgroundColor: Colors.blueGrey,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Team A", style: TextStyle(fontSize: 45)),
                        Text("0", style: TextStyle(fontSize: 70)),
                        CustomButton(message: "Add 1 Point"),
                        SizedBox(height: 16),
                        CustomButton(message: "Add 2 Point"),
                        SizedBox(height: 16),
                        CustomButton(message: "Add 3 Point"),
                      ],
                    ),
                    SizedBox(
                      height: 400,
                      child: VerticalDivider(thickness: 1, color: Colors.black),
                    ),
                    Column(
                      children: [
                        Text("Team B", style: TextStyle(fontSize: 45)),
                        Text("0", style: TextStyle(fontSize: 70)),
                        CustomButton(message: "Add 1 Point"),
                        SizedBox(height: 16),
                        CustomButton(message: "Add 2 Point"),
                        SizedBox(height: 16),
                        CustomButton(message: "Add 3 Point"),
                      ],
                    ),
                  ],
                ),
                CustomButton(message: "Reset"),
              ],
            ),
          ),
        );
      },
    );
  }
}
