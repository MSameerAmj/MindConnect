import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

Widget excerciseTypeBox(String? title, String? description, image, ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: boxcolor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  title!.text.bold.size(15).color(textinBox).make(),
                  30.heightBox,
                  description!.text.size(12).color(textinBox).make(),
                ],
              ),
            ),
            10.widthBox,
            Expanded(
              child: Image.asset(
                image,
                height: 200,
                width: 200,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
