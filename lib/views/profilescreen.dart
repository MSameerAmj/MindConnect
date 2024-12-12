import 'package:flutter/material.dart';
import 'package:mindconnect/common%20widgets/background.dart';
import 'package:mindconnect/common%20widgets/messagebox.dart';
import 'package:mindconnect/consts/images.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

class Profilescreen extends StatelessWidget {
  final String? name;
  final String? email;
  const Profilescreen({super.key, required this.email, required this.name});

  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      appBar: AppBar(
        title: profileScreen.text.bold.color(textColor).size(30).make(),
        centerTitle: true,
      ),
      body: Column(children: [
        (context.screenHeight * 0.05).heightBox,
        Container(
            padding: const EdgeInsets.all(12),
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Row(
                children: [
                  yourname.text.color(Vx.white).size(15).make(),
                  5.widthBox,
                  name!.text.color(Vx.white).size(15).make()
                ],
              ),
              10.heightBox,
              Row(
                children: [
                  youremail.text.color(Vx.white).size(15).make(),
                  5.widthBox,
                  email!.text.color(Vx.white).size(15).make()
                ],
              ),
            ])).box.color(textColor).roundedSM.shadowSm.make(),
        30.heightBox,
        yourTimeline.text
            .color(textColor)
            .fontWeight(FontWeight.bold)
            .size(30)
            .make(),
        20.heightBox,
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(
                3,
                (index) => Messagebox(userdummyimg, dummyusers[index],
                    dummyusernames[index], dummymessages[index])),
          ),
        )
      ]),
    ));
  }
}
