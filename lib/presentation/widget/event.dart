import 'package:flutter/material.dart';

Widget Event(String text) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.add_alert),
        Text(
          text,
          style: const TextStyle(fontSize: 15),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    ),
  );
}