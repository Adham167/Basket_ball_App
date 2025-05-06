import 'package:basket_ball_app10/custom_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int resultA = 0;
  int resultB = 0;

  @override
  Widget build(BuildContext context) {
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
                    Text(resultA.toString(), style: TextStyle(fontSize: 70)),
                    CustomButton(
                      message: "Add 1 Point",
                      ontap: () {
                        resultA++;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      message: "Add 2 Point",
                      ontap: () {
                        resultA += 2;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      message: "Add 3 Point",
                      ontap: () {
                        resultA += 3;
                        setState(() {});
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
                    Text(resultB.toString(), style: TextStyle(fontSize: 70)),
                    CustomButton(
                      message: "Add 1 Point",
                      ontap: () {
                        resultB++;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      message: "Add 2 Point",
                      ontap: () {
                        resultB += 2;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      message: "Add 3 Point",
                      ontap: () {
                        resultB += 3;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ],
            ),
            CustomButton(
              message: "Reset",
              ontap: () {
                resultA = 0;
                resultB = 0;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
