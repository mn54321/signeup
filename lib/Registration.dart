import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signeup/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bounce_button/bounce_button.dart';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistrationState();
  }
}

class RegistrationState extends State<Registration>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

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
                    padding: const EdgeInsets.all(35.0),
                    child: Text(
                      "SignUp",
                      style:
                          TextStyle(color: HexColor("#dbe9f6"), fontSize: 28),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 18),
                          child: TextFormField(
                            controller: nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Your Name";
                              }
                              if (value.length < 3) {
                                return "Please Enter Your Name more than 3 characters";
                              }
                            },
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
                              hintText: 'Enter Your Name',
                              prefixIcon: Icon(
                                Icons.person,
                                color: HexColor("#dbe9f6"),
                              ),
                              hintStyle: TextStyle(color: HexColor("#dbe9f6")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 18),
                          child: TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Your Email";
                              }
                            },
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
                              horizontal: 40, vertical: 18),
                          child: TextFormField(
                            controller: phoneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Your Phone Number";
                              }
                              if (value.length < 10) {
                                return "Please Enter Valid Phone Number";
                              }
                            },
                            keyboardType: TextInputType.number,
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
                              hintText: 'Enter Your Phone Number',
                              prefixIcon: Icon(
                                Icons.phone,
                                color: HexColor("#dbe9f6"),
                                size: 20,
                              ),
                              hintStyle: TextStyle(color: HexColor("#dbe9f6")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 18),
                          child: TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Your Pasword";
                              }
                              if (value.length < 6) {
                                return "Please dont enter your password less than 6 characters";
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 18),
                          child: TextFormField(
                            controller: confirmpasswordController,
                            validator: (value) {
                              if (value != passwordController.value.text) {
                                return "Please Enter Same Password";
                              }
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
                              hintText: 'Confirm your Password',
                              prefixIcon: Icon(
                                Icons.key,
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
                            if (_formKey.currentState!.validate()) {
                              registeruser();
                            }
                          },
                          child: Container(
                              height: 50,
                              width: 105,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: HexColor("#dbe9f6").withOpacity(0.2)),
                              child: Center(
                                child: Text("Register",
                                    style: TextStyle(
                                        color: HexColor("#dbe9f6"),
                                        fontWeight: FontWeight.bold)),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                        ),
                        child: Bounce(
                          onTap: () {
                            Navigator.of(context).push(PageTransition(
                                type: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 700),
                                child: Login()));
                          },
                          child: Container(
                              height: 50,
                              width: 165,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: HexColor("#dbe9f6").withOpacity(0.2)),
                              child: Center(
                                child: Text("Already Register",
                                    style: TextStyle(
                                        color: HexColor("#dbe9f6"),
                                        fontWeight: FontWeight.bold)),
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future registeruser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      final value = await auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      FirebaseFirestore.instance
          .collection("User")
          .doc(value.user!.uid ?? "")
          .set({
        "name": nameController.text,
        "eamil": emailController.text,
        "phone Number": phoneController.text,
        "password": passwordController.text,
        "confirmpassword": confirmpasswordController.text
      }).then(
        (value) => {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(seconds: 2),
                  child: Login()))
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
