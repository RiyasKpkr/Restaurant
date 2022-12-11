import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  Color color;
  double fontSize;
  TextOverflow overflow;
  FontWeight? fontWeight;
   TextWidget({
    Key? key,
    required this.text,
    this.color = Colors.teal,
    this.fontSize = 20,
    this.overflow = TextOverflow.ellipsis,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        overflow: overflow,
        fontWeight: fontWeight,
      ),
    );
  }
}