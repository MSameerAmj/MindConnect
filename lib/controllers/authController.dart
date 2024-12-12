import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindconnect/consts/strings.dart';
import 'package:velocity_x/velocity_x.dart';

class Authcontroller extends GetxController {
  var isloading = false.obs;
  var emailContorller = TextEditingController();
  var passwordcontroller = TextEditingController();
  Future<UserCredential?> loginmethod({context}) async {
    UserCredential? usercredential;

    try {
      usercredential = await auth.signInWithEmailAndPassword(
          email: emailContorller.text, password: passwordcontroller.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: "error here");
    }

    return usercredential;
  }

  Future<UserCredential?> SignUpmethod({email, password, context}) async {
    UserCredential? usercredential;

    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }

    return usercredential;
  }
}
