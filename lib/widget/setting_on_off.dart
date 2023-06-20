import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SettingOnOff extends StatelessWidget {
  const SettingOnOff({
    super.key,
    required this.tittle,
    required this.leadingIcon,
    required this.color,
    required this.colorIcon,
  });

  final String tittle;
  final IconData leadingIcon;
  final Color colorIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Icon & title
          Container(
            color: Colors.transparent,
            child: Row(
              children: [
                //
                SizedBox(width: width * 0.06),
                //Icon
                Container(
                  height: 35,
                  width: 35,
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    leadingIcon,
                    color: colorIcon,
                    size: 20,
                  ),
                ),

                //
                SizedBox(width: width * 0.03),

                //Title
                Smalltext(
                  text: tittle,
                  color: Colors.grey.shade500,
                  size: 20,
                ),
              ],
            ),
          ),

          //
          Container(
            color: Colors.transparent,
            child: Row(
              children: [
                Smalltext(
                  text: 'On',
                  color: Colors.grey.shade500,
                  size: 20,
                ),

                //
                SizedBox(width: width * 0.03),

                //
                Container(
                  height: 25,
                  width: 50,
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange.shade900,
                  ),
                  child: Container(
                    height: 20,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                  ),
                ),

                //trailing
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    PhosphorIcons.regular.caretRight,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
