import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/widget/big_text.dart';

import 'package:mid_term_ui_design/widget/setting.dart';
import 'package:mid_term_ui_design/widget/setting_english.dart';
import 'package:mid_term_ui_design/widget/setting_on_off.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const routename = 'profile_screen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    //
    final height = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              //profile background
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      c2.withOpacity(0.9),
                      c2,
                      c1,
                    ],
                  ),
                ),
              ),

              //
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  SizedBox(
                    height: height * 0.05,
                  ),
                  //
                  const Center(
                    child: Bigtext(
                      text: 'Profile',
                      color: Colors.white,
                      size: 20,
                    ),
                  ),

                  //
                  SizedBox(height: height * 0.03),

                  //Profile
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: c1,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        child: Image.asset('assets/man.png'),
                      ),
                    ),
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //Name
                  const Center(
                    child: Bigtext(
                      text: 'Tola UK',
                      color: Colors.black,
                      size: 20,
                    ),
                  ),

                  //Email
                  Center(
                    child: Smalltext(
                        text: 'nelliegbroo02@gmail.com',
                        color: Colors.grey.shade500),
                  ),

                  //
                  SizedBox(height: height * 0.04),

                  //account setting
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Bigtext(
                      text: 'Account Setting',
                      color: Colors.black,
                      size: 20,
                    ),
                  ),

                  //option

                  //Edit Profile
                  Setting(
                    tittle: 'Edit Profile',
                    leadingIcon: PhosphorIcons.regular.notePencil,
                    colorIcon: Colors.orange.shade900,
                    color: Colors.orange.shade900,
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //Payment
                  Setting(
                    tittle: 'Payment',
                    leadingIcon: PhosphorIcons.regular.creditCard,
                    colorIcon: Colors.blue.shade900,
                    color: Colors.blue.shade900,
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //Notification
                  SettingOnOff(
                    tittle: 'Notification',
                    leadingIcon: PhosphorIcons.regular.bell,
                    color: Colors.red.shade900,
                    colorIcon: Colors.red.shade900,
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //
                  SettingEnglish(
                    tittle: 'Language',
                    leadingIcon: PhosphorIcons.regular.translate,
                    color: Colors.greenAccent.shade700,
                    colorIcon: Colors.greenAccent.shade700,
                  ),

                  //
                  //
                  SizedBox(height: height * 0.02),

                  //Support
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Bigtext(
                      text: 'Support',
                      color: Colors.black,
                      size: 20,
                    ),
                  ),

                  //option

                  //Edit Profile
                  Setting(
                    tittle: 'Message',
                    leadingIcon: PhosphorIcons.regular.chatCircle,
                    colorIcon: Colors.red.shade900,
                    color: Colors.red.shade900,
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //Give Us Feedback
                  Setting(
                    tittle: 'Give Us Feedback',
                    leadingIcon: PhosphorIcons.regular.paperPlaneTilt,
                    colorIcon: Colors.orange.shade900,
                    color: Colors.orange.shade900,
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //Terms Of Service
                  Setting(
                    tittle: 'Terms Of Service',
                    leadingIcon: PhosphorIcons.regular.warningCircle,
                    colorIcon: Colors.blue.shade900,
                    color: Colors.blue.shade900,
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //About Us
                  Setting(
                    tittle: 'About Us',
                    leadingIcon: PhosphorIcons.regular.question,
                    colorIcon: Colors.greenAccent.shade700,
                    color: Colors.greenAccent.shade700,
                  ),

                  //
                  SizedBox(height: height * 0.01),

                  //Log out
                  Setting(
                    tittle: 'Log out',
                    leadingIcon: PhosphorIcons.regular.signOut,
                    colorIcon: Colors.orange.shade900,
                    color: Colors.orange.shade900,
                  ),

                  //
                  SizedBox(height: height * 0.10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
