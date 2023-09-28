import 'package:flutter/material.dart';

Widget logoWidget() {
  return Row(
    children: [
      Image.asset(
        'assets/q.png',
        width: 40,
        height: 40,
      ),
      const Text(
        "uickMart",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ],
  );
}
