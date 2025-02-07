import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustomTextFelids extends StatelessWidget {
  const CustomTextFelids({super.key, required this.hint, this.maxLine = 1});
  final String hint;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
