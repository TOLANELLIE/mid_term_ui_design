import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/widget/big_text.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PopularWidget extends StatefulWidget {
  const PopularWidget({
    super.key,
    required this.image,
    required this.title,
    required this.distance,
    required this.price,
    required this.rate,
  });

  final String image;
  final String title;
  final String distance;
  final String price;
  final String rate;

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  @override
  Widget build(BuildContext context) {
    //
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Row(
        children: [
          //
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //
          const SizedBox(width: 15),

          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Bigtext(
                text: widget.title,
                color: Colors.black,
                size: 20,
              ),

              //
              Row(
                children: [
                  //
                  Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Icon(
                          PhosphorIcons.regular.arrowsHorizontal,
                          size: 24,
                          color: Colors.orange.shade900,
                        ),

                        //
                        const SizedBox(width: 5),
                        //
                        Smalltext(
                            text: widget.distance, color: Colors.grey.shade500),
                      ],
                    ),
                  ),
                  SizedBox(width: width * 0.25),

                  //
                  Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Icon(
                          PhosphorIcons.fill.star,
                          size: 16,
                          color: Colors.orange,
                        ),

                        const SizedBox(
                          width: 5,
                        ),

                        //
                        Smalltext(text: widget.rate, color: Colors.black),
                      ],
                    ),
                  ),
                ],
              ),

              //
              Smalltext(text: widget.price, color: Colors.black),
            ],
          )
        ],
      ),
    );
  }
}
