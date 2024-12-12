import 'package:flutter/material.dart';
import 'package:mindconnect/common%20widgets/background.dart';
import 'package:mindconnect/common%20widgets/messagebox.dart';
import 'package:mindconnect/consts/images.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

class Forumscreen extends StatelessWidget {
  const Forumscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      appBar: AppBar(
        title: forumpage.text.bold.color(textColor).size(30).make(),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                    3,
                    (index) => Messagebox(userdummyimg, dummyusers[index],
                        dummyusernames[index], dummymessages[index])),
              ),
            ),
            
          ],
        ),
      ),
    ));
  }
}
