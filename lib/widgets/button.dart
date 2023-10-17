import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../src/constants/color.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key, required this.label, this.textColor = Colors.black});

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Material(
        elevation: 3,
        
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: Colors.white,
          child: Text(
            label,
            style: TextStyle(
                color: textColor, fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
