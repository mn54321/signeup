import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:signeup/Login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatefulWidget {
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 60),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            builPage(
                color: Colors.white,
                UrlImage: 'images/first.gif',
                title: 'Choose Your Product',
                subtitle:
                    'Welcome to the world of Limitless Choices-Your Perfect Product Awaits!'),
            builPage(
                color: Colors.white,
                UrlImage: 'images/second.gif',
                title: 'Select Payment Method',
                subtitle:
                    'For seamless Transection,Choose Yours Payment Method - Your Convenience, Our Priority'),
            builPage(
                color: Colors.white,
                UrlImage: 'images/third.gif',
                title: 'Deliver at your Door Step',
                subtitle:
                    'From our DoorStep to Yours -Swift,Secure, and Contactless Delivary'),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  minimumSize: const Size.fromHeight(60)),
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () async {
                Navigator.of(context).pushReplacement(
                  PageTransition(
                      child: Login(),
                      type: PageTransitionType.fade,
                      duration: Duration(seconds: 2)),
                );
              },
            )
          : Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => controller.jumpToPage(3),
                    child: Text("Skip"),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(spacing: 16),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: Duration(
                            milliseconds: 500,
                          ),
                          curve: Curves.easeIn),
                    ),
                  ),
                  TextButton(
                    onPressed: () => controller.nextPage(
                        duration: Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeIn),
                    child: Text("Next"),
                  )
                ],
              ),
            ),
    );
  }

  Widget builPage(
          {required Color color,
          required String UrlImage,
          required String title,
          required String subtitle}) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              UrlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 64,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );
}
