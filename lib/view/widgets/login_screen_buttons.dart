import 'package:flutter/material.dart';

Widget loginButton(Function() onTap, IconData icon) {
  return IconButton(
    onPressed: onTap,
    icon: Icon(
      icon,
      size: 30,
      color: Colors.white,
    ),
    style: ButtonStyle(
      backgroundColor:
          WidgetStatePropertyAll(Color(0xFF2DB091)), // Set button color
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(50), // Adjust radius for round shape
        ),
      ),
      padding:
          WidgetStatePropertyAll(EdgeInsets.all(20)), // Optional: Add padding
    ),
  );
}
