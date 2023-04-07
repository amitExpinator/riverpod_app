import 'package:flutter/material.dart';

class CustomQueryTypeWidget extends StatelessWidget {
  final String text;
  const CustomQueryTypeWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        const Icon(Icons.circle_outlined),
        Text(text),
      ]),
    );
  }
}
