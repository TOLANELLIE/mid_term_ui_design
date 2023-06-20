import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mid_term_ui_design/views/welcome_screen.dart';
import 'package:mid_term_ui_design/widget/big_text.dart';

import 'package:mid_term_ui_design/widget/button.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:mid_term_ui_design/widget/tex_field.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routename = 'login_screen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //
    final height = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop(WelcomeScreen.routename);
          },
          icon: Icon(
            PhosphorIcons.bold.caretLeft,
            size: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            const Bigtext(text: 'Welcome back', color: Colors.black),
            Smalltext(
                text: 'Sign in with your email and',
                color: Colors.grey.shade500),
            Smalltext(text: 'password', color: Colors.grey.shade500),

            //
            SizedBox(height: height * 0.05),

            //Email
            const TextInput(label: 'Email', hint: 'example@gmail.com'),

            //
            SizedBox(height: height * 0.02),

            //
            TextInput(
              label: 'Password',
              hint: 'atleast 8 charactors',
              icon: PhosphorIcons.fill.eyeSlash,
              obsecuretext: true,
              color: Colors.grey.shade500,
            ),

            //
            SizedBox(height: height * 0.05),

            //button
            const ButtonClickLogin(
              title: 'Sign In',
            ),

            //
            SizedBox(height: height * 0.02),

            //Smalltext
            Center(
                child: Smalltext(
                    text: 'Forgot Password', color: Colors.grey.shade500)),
          ],
        ),
      ),
    );
  }
}
