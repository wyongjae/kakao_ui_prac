import 'package:flutter/cupertino.dart';

Widget buildItem(String asset, String title) {
  return Column(
    children: [
      Image.asset(
        asset,
        width: 80,
        height: 95,
      ),
      Text(title),
    ],
  );
}