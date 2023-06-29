import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mid_term_ui_design/views/welcome_screen.dart';
import 'package:mid_term_ui_design/widget/big_text.dart';
import 'package:mid_term_ui_design/widget/buttom_click_signup.dart';

import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:mid_term_ui_design/widget/tex_field.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const routename = 'signup_screen';
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    //
    final height = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pushNamed(WelcomeScreen.routename);
          },
          icon: Icon(
            PhosphorIcons.bold.caretLeft,
            size: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              const Bigtext(text: 'Create an Account', color: Colors.black),
              Smalltext(
                  text: 'Let\'s us know what your name, email,',
                  color: Colors.grey.shade500),
              Smalltext(text: 'and your password', color: Colors.grey.shade500),

              //
              SizedBox(height: height * 0.05),

              //
              const TextInput(
                label: 'Full Name',
                hint: 'atleast 8 charactors',
              ),

              //
              SizedBox(height: height * 0.04),

              //Email
              const TextInput(
                label: 'Email',
                hint: 'example@gmail.com',
              ),

              //
              SizedBox(height: height * 0.04),

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

              //Smalltext
              const Smalltext(
                  text: 'Confirm your email. Standard message and date',
                  color: Colors.black),
              const Smalltext(text: 'retes apply.', color: Colors.black),

              //
              SizedBox(height: height * 0.02),

              //button
              const ButtonClickSignUP(
                title: 'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
