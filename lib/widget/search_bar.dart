import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({
    super.key,
    required this.hint,
    required this.icon,
    this.backgroundColor = defaultColor,
  });

  final String hint;
  final IconData icon;
  final Color? backgroundColor;
  static const defaultColor = Color(0xff5dbb63);

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: widget.backgroundColor!.withOpacity(0.3),
        filled: true,
        prefixIcon: Icon(
          widget.icon,
          size: 24,
        ),
        hintText: widget.hint,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
