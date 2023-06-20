import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    required this.label,
    required this.hint,
    this.icon,
    this.obsecuretext = false,
    this.color,
  });

  final String label;
  final String hint;
  final IconData? icon;
  final Color? color;

  //
  final bool obsecuretext;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obsecuretext,
      cursorColor: c1,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(color: c1, fontSize: 18),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: Colors.grey.shade500,
          fontWeight: FontWeight.normal,
        ),
        suffixIcon: Icon(widget.icon, color: widget.color),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade500, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: c1, width: 2),
        ),
        focusColor: c1,
      ),
    );
  }
}
