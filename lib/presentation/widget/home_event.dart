import 'package:flutter/material.dart';

class HomeEvent extends StatelessWidget {
  final String text;

  const HomeEvent({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
