import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 195, 159, 231),
            borderRadius: BorderRadius.circular(40)),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(
              fontSize: 34,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
