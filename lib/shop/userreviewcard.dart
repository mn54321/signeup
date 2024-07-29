import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

class Userreviewcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "images/mann.jpeg",
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Manpreet",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              RatingBarIndicator(
                rating: 4.5,
                itemSize: 15,
                unratedColor: Colors.grey.shade400,
                itemBuilder: (_, __) => Icon(
                  Icons.star,
                  color: Colors.indigo,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "01, Jan, 2024",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.grey.shade800),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ReadMoreText(
            "The user interface of app is quit intutive.I was able to navigate and make puchases seamlessly.Great job ",
            trimLines: 1,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'show more',
            trimExpandedText: ' show Less',
            moreStyle: TextStyle(fontWeight: FontWeight.bold),
            lessStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Manpreet",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),
                      ),
                      Text(
                        "01, Jan, 2024",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReadMoreText(
                    "The user interface of app is quit intutive.I was able to navigate and make puchases seamlessly.Great job.I really like it ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'show more',
                    trimExpandedText: ' show Less',
                    moreStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.indigo),
                    lessStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
