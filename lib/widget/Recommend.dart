import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/widget/big_text.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RecommendTrip extends StatefulWidget {
  const RecommendTrip({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  final String image;
  final String title;
  final String subtitle;
  final String price;

  @override
  State<RecommendTrip> createState() => _RecommendTripState();
}

class _RecommendTripState extends State<RecommendTrip> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, 0),
            color: Colors.black45,
          )
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //
              Positioned(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: c1.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10)),
                        child: Bigtext(
                          text: widget.price,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),

                      Container(
                        height: 30,
                        width: 30,
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: c1.withOpacity(0.8),
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        child: Icon(
                          PhosphorIcons.regular.heart,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //
          Container(
            margin: const EdgeInsets.only(
              bottom: 10,
              left: 10,
              right: 10,
            ),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                Bigtext(
                  text: widget.title,
                  color: Colors.black,
                  size: 20,
                ),

                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Icon(
                            PhosphorIcons.fill.mapPinLine,
                            color: Colors.orange.shade900,
                            size: 20,
                          ),

                          SizedBox(
                            width: width * 0.01,
                          ),

                          //
                          Smalltext(
                              text: widget.subtitle,
                              color: Colors.grey.shade500),
                        ],
                      ),
                    ),

                    //
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: c1,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          PhosphorIcons.fill.arrowRight,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
