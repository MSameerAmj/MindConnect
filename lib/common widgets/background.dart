import 'package:flutter/material.dart';
import 'package:mindconnect/consts/images.dart';

Widget background(Widget? child) {
  return Container(
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 255, 239, 158),
    ),
    child: child,
  );
}
