import 'package:flutter/material.dart';
import 'package:mid_term_ui_design/style/color.dart';
import 'package:mid_term_ui_design/widget/small_text.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SettingEnglish extends StatefulWidget {
  const SettingEnglish({
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
  State<SettingEnglish> createState() => _SettingEnglishState();
}

class _SettingEnglishState extends State<SettingEnglish> {
  String defaultLanguges = 'English   ';

  Widget dropDownList() {
    return DropdownButton(
      focusColor: c1,
      value: defaultLanguges,
      icon: Icon(
        PhosphorIcons.regular.caretDown,
        size: 20,
      ),
      iconDisabledColor: c1,
      iconEnabledColor: c1,
      underline: Container(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(10),
      onChanged: (String? value) {
        setState(
          () {
            defaultLanguges = value!;
          },
        );
      },
      items: [
        DropdownMenuItem<String>(
          value: 'English   ',
          child: Smalltext(
            text: 'English   ',
            color: Colors.grey.shade500,
            size: 20,
          ),
        ),
        DropdownMenuItem<String>(
          value: 'Khmer   ',
          child: Smalltext(
            text: 'Khmer   ',
            color: Colors.grey.shade500,
            size: 20,
          ),
        ),
      ],
    );
  }

  //
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
                    color: widget.color.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    widget.leadingIcon,
                    color: widget.colorIcon,
                    size: 20,
                  ),
                ),

                //
                SizedBox(width: width * 0.03),

                //Title
                Smalltext(
                  text: widget.tittle,
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
                dropDownList(),

                //
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
