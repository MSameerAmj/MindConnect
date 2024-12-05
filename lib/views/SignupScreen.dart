import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindconnect/common%20widgets/appicon.dart';
import 'package:mindconnect/common%20widgets/background.dart';
import 'package:mindconnect/common%20widgets/customButton.dart';
import 'package:mindconnect/common%20widgets/customtextBox.dart';
import 'package:mindconnect/views/LoginScreen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:mindconnect/consts/strings.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            Appicon(99, 99),
            10.heightBox,
            "Register to $appname"
                .text
                .color(textColor)
                .size(25)
                .align(TextAlign.center)
                .make(),
            20.heightBox,
            Column(
              children: [
                CustomTextbox(hint: nameHint, title: name, ispass: false),
                5.heightBox,
                CustomTextbox(hint: emailHint, title: email, ispass: false),
                5.heightBox,
                CustomTextbox(
                    title: password, hint: passwordHint, ispass: true),
                5.heightBox,
                CustomTextbox(
                    hint: passwordHint, title: retypePassword, ispass: true),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.orange,
                      value: ischeck,
                      onChanged: (newValue) {
                        setState(() {
                          ischeck = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: aggrement,
                            style: TextStyle(
                              color: textColor,
                            ))
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                customButton(
                    color: ischeck == true
                        ? const Color.fromARGB(255, 68, 239, 74)
                        : const Color.fromARGB(255, 230, 228, 228),
                    Title: register,
                    textColor: textColor,
                    onpress: () {
                      print("Button pressed");
                    }).box.width(context.screenWidth - 50).make(),
                20.heightBox,
                customButton(
                    color: const Color.fromARGB(255, 68, 239, 74),
                    Title: Login,
                    textColor: textColor,
                    onpress: () {
                      Get.to(() => const LoginPage());
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
