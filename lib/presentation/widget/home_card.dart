import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final Color backGroundColor;
  final String firstText;
  final Color firstTextColor;
  final String secondText;
  final Color secondTextColor;
  final String thirdText;
  final Color thirdTextColor;
  final String imageUrl;

  const HomeCard({
    Key? key,
    required this.backGroundColor,
    required this.firstText,
    required this.firstTextColor,
    required this.secondText,
    required this.secondTextColor,
    required this.thirdText,
    required this.thirdTextColor,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backGroundColor,
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
                    firstText,
                    style: TextStyle(
                      fontSize: 22,
                      color: firstTextColor,
                    ),
                  ),
                  Text(
                    secondText,
                    style: TextStyle(
                      fontSize: 22,
                      color: secondTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    thirdText,
                    style: TextStyle(
                      fontSize: 12,
                      color: thirdTextColor,
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
}
