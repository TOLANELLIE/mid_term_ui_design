import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/views/welcome_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => GoRouter.of(context).pushReplacementNamed(WelcomeScreen.routename),
    );
  }

  @override
  Widget build(BuildContext context) {
    //
    final height = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      backgroundColor: c1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: height * 0.30,
              ),
              height: 250,
              width: 250,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(250),
                // image: const DecorationImage(
                //   image: AssetImage('assets/logo_splash.png'),
                // ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo_splash.png',
                    scale: 3,
                  ),
                  SizedBox(height: height * 0.02),
                  const Text(
                    'Nellie Hotel',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //

          //
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.20,
            ),
            child: const Text(
              'Welcome Nellie Hotel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //
          SizedBox(
            height: height * 0.01,
          ),

          //
          const Text(
            'Version 1.0.0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
