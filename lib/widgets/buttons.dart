import 'package:flutter/material.dart';

Widget textButton({required onPressed, required buttonName}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      buttonName,
      style: TextStyle(
        color: Colors.white,
        letterSpacing: 0.5,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: TextButton.styleFrom(
      backgroundColor: Color(0xFF2697FF),
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 80),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
  );
}
