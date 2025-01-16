import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text loginScreenTitile(String data, double size) {
  return Text(
    data,
    style: textStyleForLoginHeadline(size),
  );
}

Widget loginOrSignUpButtonText(String data) {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0),
    child: Text(
      data,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: const Color(0xFF2DB091)),
    ),
  );
}

// for login headline
TextStyle textStyleForLoginHeadline(double size) {
  return GoogleFonts.pacifico(
    textStyle: TextStyle(
      color: const Color(0xFFE88F20),
      //fontWeight: FontWeight.bold,
      fontSize: size,
    ),
  );
}
