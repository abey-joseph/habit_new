import 'package:flutter/material.dart';

Widget loginTextField(
    bool isPassword, String hintText, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextField(
      controller: controller,
      obscureText: isPassword, // Hide input for passwords
      decoration: InputDecoration(
        hintText: hintText, // Placeholder text
        hintStyle: TextStyle(color: Colors.grey.shade500), // Hint text style
        filled: true,
        //fillColor: Colors.grey.shade100, // Light background color
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
          borderSide: BorderSide(
              color: const Color(0xFF2DB091), width: 1.5), // Outline color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
              BorderSide(color: Color(0xFFE88F20), width: 2), // Highlight color
        ),
      ),
    ),
  );
}
