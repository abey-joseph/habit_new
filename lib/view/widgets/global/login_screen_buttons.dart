import 'package:flutter/material.dart';

Widget loginOrSignUpButton(Function() onTap, IconData icon) {
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

Widget loginButton(String text, Function() onTap) {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0),
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF2DB091), // Button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 13, horizontal: 24), // Padding inside the button
        elevation: 4, // Shadow effect
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white, // Text color
        ),
      ),
    ),
  );
}
