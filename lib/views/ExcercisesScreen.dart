import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mindconnect/common%20widgets/background.dart';
import 'package:mindconnect/common%20widgets/excerciseTypeBox.dart';
import 'package:mindconnect/consts/images.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:mindconnect/views/ExerciseSectionScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class Excercisesscreen extends StatelessWidget {
  const Excercisesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      appBar: AppBar(
        title: excercisebar.text.bold.color(textColor).size(30).make(),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: excerciseTypeBox(
                    dailyExcercies, dailyexcdescp, dailyexcimg, () {
              Get.to(const Exercisesectionscreen(
                  title: dailyExcercies,
                  exercisenames: dailyexs,
                  images: dailyexcimgs,
                  times: dailyexcstimes));
            })),
            10.heightBox,
            Expanded(
                child: excerciseTypeBox(
                    mindExc, mindexcdescp, mindfulnessexcimg, () {
              Get.to(const Exercisesectionscreen(
                  title: mindExc,
                  exercisenames: mindfulnessexs,
                  images: mindfullnessimgs,
                  times: mindfulexcstimes));
            })),
            10.heightBox,
            Expanded(
              child: excerciseTypeBox(medexc, medexcdescp, meditationexc, () {
                Get.to(const Exercisesectionscreen(
                    title: medexc,
                    exercisenames: medtationexs,
                    images: meditationimgs,
                    times: medexcstimes));
              }),
            )
          ],
        ),
      ),
    ));
  }
}
