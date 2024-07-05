import 'package:flutter/material.dart';

import 'package:signeup/home/homenav.dart';

class Tcircularcontainer extends StatelessWidget {
  const Tcircularcontainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = Colors.white,
    this.child,
  });

  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final Color backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
