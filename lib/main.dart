import 'dart:async';

import 'package:flutter/material.dart';
import 'package:signeup/Login.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:signeup/firebase_options.dart';
import 'package:page_transition/page_transition.dart';
import 'package:signeup/onboarding/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Signeup',
    home: Signeup(),
  ));
}

class Signeup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SigneupState();
  }
}

class SigneupState extends State<Signeup> {
  @override
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        animationDuration: Duration(seconds: 2),
        splashIconSize: 250,
        splashTransition: SplashTransition.sizeTransition,
        splash: Center(
          child: LottieBuilder.asset(
            "images/animation.json",
          ),
        ),
        nextScreen: Onboarding());
  }
}
