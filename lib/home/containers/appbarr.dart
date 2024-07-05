import 'package:flutter/material.dart';
import 'package:signeup/home/containers/containers.dart';
import 'package:hexcolor/hexcolor.dart';

class Appbarr extends StatelessWidget {
  const Appbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Tcircularcontainer(
              child: Column(
                children: [
                  AppBar(
                    title: Column(
                      children: [
                        Text(
                          "Good Day For Shopping",
                          style: TextStyle(color: HexColor("#dbe9f6")),
                        ),
                        Text(
                          "Manpreet Singh",
                          style: TextStyle(color: HexColor("#dbe9f6")),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
