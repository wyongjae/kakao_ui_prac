import 'package:flutter/material.dart';

Card buildCard(String text1, Color text1Color, String text2, Color text2Color,
    String text3, Color text3Color, String imageUrl, Color color) {
  return Card(
    color: color,
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 22,
                    color: text1Color,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 22,
                    color: text2Color,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text3,
                  style: TextStyle(
                    fontSize: 12,
                    color: text3Color,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ),
  );
}
