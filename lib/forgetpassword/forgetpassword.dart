import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bounce_button/bounce_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Forgetpassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgetpasswordState();
  }
}

class ForgetpasswordState extends State<Forgetpassword> {
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future resetPassword() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth
          .sendPasswordResetEmail(email: emailController.value.text)
          .then((value) {});
      showAdaptiveDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("ok"))
            ],
            content: Text("Pasword reset link has been sent! to your email"),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showAdaptiveDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("ok"))
            ],
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Forgot Your Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Pleas enter your email to reset your password",
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
              child: TextFormField(
                  controller: emailController,
                  onTap: null,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.indigo)),
                    hintText: 'Enter your Email',
                  )),
            ),
            Bounce(
              onTap: () {
                resetPassword();
              },
              child: Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.indigo),
                  child: Center(
                    child: Text("Reset Password",
                        style: TextStyle(
                            color: HexColor("#dbe9f6"),
                            fontWeight: FontWeight.bold)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
