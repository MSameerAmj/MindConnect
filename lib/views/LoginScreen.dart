import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindconnect/common%20widgets/appicon.dart';
import 'package:mindconnect/common%20widgets/background.dart';
import 'package:mindconnect/common%20widgets/customButton.dart';
import 'package:mindconnect/common%20widgets/customtextBox.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:mindconnect/views/ForumScreen.dart';
import 'package:mindconnect/views/SignupScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            Appicon(150, 150),
            10.heightBox,
            "Login to $appname"
                .text
                .color(textColor)
                .size(25)
                .align(TextAlign.center)
                .make(),
            20.heightBox,
            Column(
              children: [
                CustomTextbox(hint: emailHint, title: email, ispass: false),
                5.heightBox,
                CustomTextbox(
                    title: password, hint: passwordHint, ispass: true),
                10.heightBox,
                10.heightBox,
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: donothaveAcc,
                      style: TextStyle(color: textColor),
                    ),
                    TextSpan(
                      text: register,
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    )
                  ]),
                ).onTap(() {
                  Get.to(() => const Signupscreen());
                }),
                20.heightBox,
                customButton(
                    color: const Color.fromARGB(255, 68, 239, 74),
                    Title: Login,
                    textColor: textColor,
                    onpress: () {
                      Get.offAll(() => const Forumscreen());
                    }).box.width(context.screenWidth - 50).make(),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
