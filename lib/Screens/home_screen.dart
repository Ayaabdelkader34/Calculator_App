import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/screens/widgets_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cal_button.dart';
import '../widgets/textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      color: Colors.white,
      //color: Color.fromARGB(255, 173, 116, 235),
    );

    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 205, 173, 236),
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "assets/car2.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const Spacer(),
                CustomTextField(
                  controller: provider.compController,
                ),
                const Spacer(),
                Container(
                  height: screenHeight * 0.6,
                  width: double.infinity,
                  padding: padding,
                  decoration: decoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 4]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 8]),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 12]),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 15]),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const CalculateButton()
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}
