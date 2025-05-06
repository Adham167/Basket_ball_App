import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, required this.message});
  final void Function()? ontap;
  final String message;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 45,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(message)),
      ),
    );
  }
}
