import 'package:flutter/material.dart';

class Tabviewelectronics extends StatelessWidget {
  Tabviewelectronics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 56,
                  width: 56,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image(
                    image: AssetImage("images/electronics/flash.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Electronics",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.verified,
                          size: 13,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Text(
                      "21 products ",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ),
          tabviewimage(
            images: [
              "images/electronics/iphone.png",
              "images/electronics/head.png",
              "images/electronics/vr.png"
            ],
          )
        ],
      ),
    );
  }
}

class tabviewimage extends StatelessWidget {
  const tabviewimage({super.key, required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: images
            .map(
              (image) => addimages(image, context),
            )
            .toList()

        /*  Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 5),
            padding: const EdgeInsets.all(5),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: const Image(
                fit: BoxFit.contain,
                image: AssetImage("images/brands/jacket.png")),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 5),
            padding: EdgeInsets.all(5),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Image(
                fit: BoxFit.contain,
                image: AssetImage("images/brands/jacket.png")),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Image(
                fit: BoxFit.contain,
                image: AssetImage("images/brands/jacket.png")),
          ),
        )  change krke niche likheya*/

        );
  }
}

Widget addimages(String image, context) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.all(5),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}