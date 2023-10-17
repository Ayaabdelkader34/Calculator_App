import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
        child: TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: InputBorder.none,
            fillColor: Color.fromARGB(255, 243, 231, 255),
            // filled: true
          ),
          style: const TextStyle(fontSize: 50,
         // color: 
          ),
          readOnly: true,
          autofocus: true,
          //  showCursor: true,
        ),
      ),
    );
  }
}
