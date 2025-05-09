import 'package:basket_ball_app10/cubit/counter_cubit.dart';
import 'package:basket_ball_app10/cubit/counter_state.dart';
import 'package:basket_ball_app10/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
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
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).resultA}",
                          style: TextStyle(fontSize: 70),
                        ),
                        CustomButton(
                          message: "Add 1 Point",
                          ontap: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).TeamIncrement(team: "A", buttonNumber: 1);
                          },
                        ),
                        SizedBox(height: 16),
                        CustomButton(
                          message: "Add 2 Point",
                          ontap: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).TeamIncrement(team: "A", buttonNumber: 2);
                          },
                        ),
                        SizedBox(height: 16),
                        CustomButton(
                          message: "Add 3 Point",
                          ontap: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).TeamIncrement(team: "A", buttonNumber: 3);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 400,
                      child: VerticalDivider(thickness: 1, color: Colors.black),
                    ),
                    Column(
                      children: [
                        Text("Team B", style: TextStyle(fontSize: 45)),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).resultB}",
                          style: TextStyle(fontSize: 70),
                        ),
                        CustomButton(
                          message: "Add 1 Point",
                          ontap: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).TeamIncrement(team: "B", buttonNumber: 1);
                          },
                        ),
                        SizedBox(height: 16),
                        CustomButton(
                          message: "Add 2 Point",
                          ontap: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).TeamIncrement(team: "B", buttonNumber: 2);
                          },
                        ),
                        SizedBox(height: 16),
                        CustomButton(
                          message: "Add 3 Point",
                          ontap: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).TeamIncrement(team: "B", buttonNumber: 3);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                CustomButton(
                  message: "Reset",
                  ontap: () {
                    BlocProvider.of<CounterCubit>(
                      context,
                    ).TeamIncrement(team: "0", buttonNumber: 1);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
