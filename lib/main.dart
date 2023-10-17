import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/src/features/screens/on_Boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CalculatorProvider(),
        
         child:
          MaterialApp(
      //theme: ThemeData.light(),
     // darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: OnBoaardingScreen(),
    ),
    );
  }
}
