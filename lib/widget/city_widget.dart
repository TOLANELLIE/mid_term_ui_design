import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';

class City extends StatefulWidget {
  const City({
    super.key,
    required this.image,
    required this.cityName,
  });

  final String image;
  final String cityName;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  //

  //
  @override
  Widget build(BuildContext context) {
    //

    //
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: NetworkImage(
                widget.image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Smalltext(text: widget.cityName, color: Colors.grey.shade500),

        //
      ],
    );
  }
}
