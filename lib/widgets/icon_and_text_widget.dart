import 'package:flutter/material.dart';
import 'package:restaurants/widgets/text_widget.dart';

class IconTextWidget extends StatelessWidget {
  IconData icon;
  Color iconColor;
  String text;
  double iconSize;
  Color textColor;
  double fontSize;
  IconTextWidget({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
    required this.text,
    required this.fontSize,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        SizedBox(width: 5,),
        TextWidget(
          text: text,
          color: textColor,
          fontSize: fontSize,
        ),
      ],
    );
  }
}
