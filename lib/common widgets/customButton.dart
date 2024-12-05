import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customButton({onpress, color, textColor, String? Title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color, padding: const EdgeInsets.all(12)),
      onPressed: onpress,
      child: Title!.text.color(textColor).make());
}
