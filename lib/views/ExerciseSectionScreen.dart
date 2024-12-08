import 'package:flutter/material.dart';
import 'package:mindconnect/common%20widgets/background.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

class Exercisesectionscreen extends StatelessWidget {
  final String? title;
  final List<String>? exercisenames;
  final List<String>? images;
  final List<String>? times;
  const Exercisesectionscreen(
      {super.key,
      required this.title,
      required this.exercisenames,
      required this.images,
      required this.times});

  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      appBar: AppBar(
        title: title!.text.bold.color(textColor).size(30).make(),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      images![index],
                      width: 22,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        exercisenames![index]
                            .text
                            .bold
                            .color(Vx.black)
                            .size(18)
                            .make(),
                        5.heightBox,
                        times![index]
                            .text
                            .color(const Color.fromARGB(255, 103, 101, 101))
                            .make()
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(color: Colors.grey);
                },
                itemCount: exercisenames!.length)
            .box
            .shadowSm
            .white
            .rounded
            .padding(const EdgeInsets.all(12))
            .width(context.screenWidth * 0.8)
            .make(),
      ),
    ));
  }
}
