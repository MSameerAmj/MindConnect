import 'package:flutter/material.dart';
import 'package:mindconnect/consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

Widget Appicon(int? height, int? width) {
  return Image.asset(appicon, fit: BoxFit.contain)
      .box
      .white
      .size(height!.toDouble(), width!.toDouble())
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
