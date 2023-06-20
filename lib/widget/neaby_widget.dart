import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';

class Nearby extends StatefulWidget {
  const Nearby({
    super.key,
  });

  @override
  State<Nearby> createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
  @override
  Widget build(BuildContext context) {
    //

    //
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: c1,
            borderRadius: BorderRadius.circular(60),
          ),
          child: Icon(
            PhosphorIcons.fill.navigationArrow,
            color: Colors.white,
            size: 24,
          ),
        ),
        Smalltext(text: 'Nearby', color: Colors.grey.shade500),
      ],
    );
  }
}
