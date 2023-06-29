import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/views/login_screen.dart';

import 'package:mid_term_ui_design/widget/big_text.dart';
import 'package:mid_term_ui_design/widget/buttom_click_welcome.dart';

import 'package:mid_term_ui_design/widget/small_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const routename = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    //
    final height = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 250,
                width: 220,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(220),
                    topLeft: Radius.circular(220),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img_welcome.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //
            SizedBox(height: height * 0.07),

            //Big text
            const Bigtext(
              text: 'Let\'s get started',
              color: Colors.black,
            ),
            SizedBox(
              height: height * 0.01,
            ),

            //Small text
            Smalltext(
              text: 'Login to your account below or signup',
              color: Colors.grey.shade500,
            ),

            //Small Text
            Smalltext(
              text: 'for an amazing experience',
              color: Colors.grey.shade500,
            ),

            //
            SizedBox(height: height * 0.15),

            //button
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ButtonClickWelcome(
                title: 'Sign up with mobile',
              ),
            ),

            //
            SizedBox(height: height * 0.02),

            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Smalltext(
                    text: 'Already have an account?', color: Colors.black),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed(LoginScreen.routename);
                  },
                  child: Smalltext(text: ' Log In', color: c1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
