import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Color? color;
  final Function callback;

  const CalculatorButton(
      {required this.label, this.color, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("button pressed!");
        callback(label);
      },
      child: Text(label),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color ?? Colors.yellow)),
    );
  }
}
