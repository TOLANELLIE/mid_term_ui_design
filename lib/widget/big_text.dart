import 'package:flutter/material.dart';

class Bigtext extends StatelessWidget {
  const Bigtext({
    super.key,
    required this.text,
    required this.color,
    this.size = 28,
  });

  final String text;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
