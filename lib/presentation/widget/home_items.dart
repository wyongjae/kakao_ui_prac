import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeItems extends StatelessWidget {
  final String asset;
  final String title;

  const HomeItems({
    Key? key,
    required this.asset,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
