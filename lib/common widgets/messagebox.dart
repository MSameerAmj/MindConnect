import 'package:flutter/material.dart';
import 'package:mindconnect/consts/images.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

Widget Messagebox(image, String? Name, String? username, String? message) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: boxcolor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          CircleAvatar(radius: 24, backgroundImage: AssetImage(userdummyimg)),
          10.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "$Name".text.bold.size(12).color(textinBox).make(),
              5.heightBox,
              "$username".text.size(8).color(textinBox).make(),
            ],
          ),
        ]),
        10.heightBox,
        "$message".text.size(10).color(textinBox).bold.make()
      ],
    ),
  );
}
