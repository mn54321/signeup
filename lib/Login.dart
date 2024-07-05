import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signeup/Registration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:signeup/forgetpassword/forgetpassword.dart';
import 'package:signeup/home/home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bounce_button/bounce_button.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> with SingleTickerProviderStateMixin {
  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor("#4530b3"),
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
            options: ParticleOptions(
          spawnMaxSpeed: 20,
          spawnMaxRadius: 50,
          spawnMinSpeed: 10,
          spawnMinRadius: 30,
          particleCount: 15,
          baseColor: HexColor("#dbe9f6"),
          minOpacity: 0.1,
          spawnOpacity: 0.1,
        )),
        vsync: this,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    "Login",
                    style: TextStyle(color: HexColor("#dbe9f6"), fontSize: 28),
                  ),
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Your Email";
                            }
                          },
                          controller: emailController,
                          style: TextStyle(color: HexColor("#dbe9f6")),
                          onChanged: null,
                          decoration: InputDecoration(
                            fillColor: HexColor("#dbe9f6").withOpacity(0.1),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: HexColor("#dbe9f6"))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: HexColor("#dbe9f6"))),
                            hintText: 'Enter Your Email',
                            prefixIcon: Icon(
                              Icons.email,
                              color: HexColor("#dbe9f6"),
                              size: 20,
                            ),
                            hintStyle: TextStyle(color: HexColor("#dbe9f6")),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child: TextFormField(
                          controller: paswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Your Pasword";
                            }
                          },
                          obscureText: true,
                          style: TextStyle(color: HexColor("#dbe9f6")),
                          onChanged: null,
                          decoration: InputDecoration(
                            fillColor: HexColor("#dbe9f6").withOpacity(0.1),
                            filled: true,
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: HexColor("#dbe9f6"))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: HexColor("#dbe9f6"))),
                            hintText: 'Enter your Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 20,
                              color: HexColor("#dbe9f6"),
                            ),
                            hintStyle: TextStyle(color: HexColor("#dbe9f6")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 38),
                      child: Bounce(
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              loginuser();
                            }
                          },
                          child: Container(
                              height: 50,
                              width: 105,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: HexColor("#dbe9f6").withOpacity(0.2)),
                              child: Center(
                                child: Text("Login",
                                    style: TextStyle(
                                        color: HexColor("#dbe9f6"),
                                        fontWeight: FontWeight.bold)),
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0,
                      ),
                      child: Bounce(
                        onTap: () {
                          Navigator.of(context).pushReplacement(PageTransition(
                              child: Forgetpassword(),
                              type: PageTransitionType.fade,
                              duration: Duration(seconds: 2)));
                        },
                        child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: HexColor("#dbe9f6").withOpacity(0.2)),
                            child: Center(
                              child: Text("Forgotten Password!",
                                  style: TextStyle(
                                      color: HexColor("#dbe9f6"),
                                      fontWeight: FontWeight.bold)),
                            )),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 90),
                    child: Bounce(
                      onTap: () {
                        Navigator.of(context).push(PageTransition(
                            child: Registration(),
                            duration: Duration(milliseconds: 700),
                            type: PageTransitionType.rightToLeft));
                      },
                      child: Container(
                          height: 50,
                          width: 175,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: HexColor("#dbe9f6").withOpacity(0.2)),
                          child: Center(
                            child: Text("Create a new Account",
                                style: TextStyle(
                                    color: HexColor("#dbe9f6"),
                                    fontWeight: FontWeight.bold)),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future loginuser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth
          .signInWithEmailAndPassword(
              email: emailController.text, password: paswordController.text)
          .then(
            (value) => {
              print("sucess"),
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: Home(),
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 1000)))
            },
          );
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case "invalid-email":
          message = "Please Enter your valid Email";
          break;
        case "incorrect-password":
          message = "Plz enter valid password";
          break;
        case "User-not-found":
          message = "This user is not exist";
          break;
        default:
          message = "Something went wrong";
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
      /* if (e.code == "invalid-email") {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Please Enter your valid Email")));
      }
      if (e.code == "Error_wrong_password") {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Please Enter valid Password")));
      }
      if (e.code == "UserNotFound") {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("This user does not exist")));
      }*/
    } catch (e) {
      print(e);
    }
  }
}
