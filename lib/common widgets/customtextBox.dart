import 'package:flutter/material.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomTextbox({String? title, String? hint, ispass}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.orange).size(15).make(),
      5.heightBox,
      TextFormField(
        obscureText: ispass,
        decoration: InputDecoration(
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            hintText: hint,
            isDense: true,
            fillColor: Colors.white,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
      5.heightBox,
    ],
  );
}
