
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({
    Key? key,
    required this.size,
    required this.iconsData,
    required this.hintText,
    required this.Controller,
  }) : super(key: key);

  final Size size;
  final IconData iconsData;
  final String hintText;
  TextEditingController Controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.05,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          controller: Controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.only(top: 10),
            prefixIcon: Icon(
              iconsData,
              color: Colors.grey,
            ),
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
