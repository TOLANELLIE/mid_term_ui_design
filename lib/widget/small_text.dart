import 'package:flutter/material.dart';

class Smalltext extends StatelessWidget {
  const Smalltext({
    super.key,
    required this.text,
    required this.color,
    this.size = 16,
  });

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
