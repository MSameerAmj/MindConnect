import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mindconnect/common%20widgets/background.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  int getRandomNumber() {
    Random random = Random();
    return random.nextInt(5); // Generates a number from 1 to 5
  }

  @override
  Widget build(BuildContext context) {
    return background(
      Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              (context.screenHeight * 0.05).heightBox,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      welcome.text
                          .color(textColor)
                          .fontWeight(FontWeight.bold)
                          .size(30)
                          .make(),
                      10.widthBox,
                      username.text
                          .color(textColor)
                          .fontWeight(FontWeight.bold)
                          .size(30)
                          .make()
                    ],
                  ),
                  30.heightBox,
                  actTrack.text
                      .color(textColor)
                      .fontWeight(FontWeight.bold)
                      .size(30)
                      .make(),
                ],
              ),
              20.heightBox,
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        currentExctitle.text.color(Vx.white).size(15).make(),
                        5.widthBox,
                        dummycurrExc.text.color(Vx.white).size(15).make()
                      ],
                    ),
                    10.heightBox,
                    Row(
                      children: [
                        lastexctitle.text.color(Vx.white).size(15).make(),
                        5.widthBox,
                        dummylastExc.text.color(Vx.white).size(15).make()
                      ],
                    )
                  ],
                ),
              ).box.color(textColor).roundedSM.shadowSm.make(),
              30.heightBox,
              funfacttitle.text
                  .color(textColor)
                  .fontWeight(FontWeight.bold)
                  .size(30)
                  .make(),
              10.heightBox,
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: funfacts[getRandomNumber()]
                    .text
                    .size(20)
                    .color(Vx.white)
                    .make(),
              )
                  .box
                  .size(context.screenWidth * 0.8, context.screenHeight * 0.1)
                  .color(textColor)
                  .roundedSM
                  .shadowSm
                  .make(),
              50.heightBox,
              dailyQuotetitle.text
                  .color(textColor)
                  .fontWeight(FontWeight.bold)
                  .size(30)
                  .make(),
              10.heightBox,
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: dailyQuotes[getRandomNumber()]
                    .text
                    .color(Vx.white)
                    .size(20)
                    .make(),
              )
                  .box
                  .color(textColor)
                  .size(context.screenWidth * 0.8, context.screenHeight * 0.2)
                  .roundedSM
                  .shadowSm
                  .make()
            ],
          ),
        ),
      ),
    );
  }
}
