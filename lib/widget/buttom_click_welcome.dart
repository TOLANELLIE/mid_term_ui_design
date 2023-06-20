import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/views/sign_up_screen.dart';

class ButtonClickWelcome extends StatefulWidget {
  const ButtonClickWelcome({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ButtonClickWelcome> createState() => _ButtonClickWelcomeState();
}

class _ButtonClickWelcomeState extends State<ButtonClickWelcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.transparent,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: c1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {
          GoRouter.of(context).pushNamed(SignUpScreen.routename);
        },
        child: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
