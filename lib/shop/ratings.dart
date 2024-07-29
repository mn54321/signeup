import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:signeup/shop/userreviewcard.dart';

class Ratings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Review & Ratings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ratings reviews are verified are from people who use the same type of device that you use.",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        "4.8",
                        style: TextStyle(fontSize: 45),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(flex: 1, child: Text("5")),
                            Expanded(
                              flex: 11,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: LinearProgressIndicator(
                                  value: 1.0,
                                  minHeight: 11,
                                  backgroundColor: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(7),
                                  valueColor: AlwaysStoppedAnimation(
                                      Colors.indigo.shade500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 1, child: Text("4")),
                            Expanded(
                              flex: 11,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: LinearProgressIndicator(
                                  value: 0.8,
                                  minHeight: 11,
                                  backgroundColor: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(7),
                                  valueColor: AlwaysStoppedAnimation(
                                      Colors.indigo.shade500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 1, child: Text("3")),
                            Expanded(
                              flex: 11,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                  minHeight: 11,
                                  backgroundColor: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(7),
                                  valueColor: AlwaysStoppedAnimation(
                                      Colors.indigo.shade500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 1, child: Text("2")),
                            Expanded(
                              flex: 11,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: LinearProgressIndicator(
                                  value: 0.5,
                                  minHeight: 11,
                                  backgroundColor: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(7),
                                  valueColor: AlwaysStoppedAnimation(
                                      Colors.indigo.shade500),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(flex: 1, child: Text("1")),
                            Expanded(
                              flex: 11,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: LinearProgressIndicator(
                                  value: 0.3,
                                  minHeight: 11,
                                  backgroundColor: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(7),
                                  valueColor: AlwaysStoppedAnimation(
                                      Colors.indigo.shade500),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              RatingBarIndicator(
                rating: 4.5,
                itemSize: 20,
                unratedColor: Colors.grey.shade400,
                itemBuilder: (_, __) => Icon(
                  Icons.star,
                  color: Colors.indigo,
                ),
              ),
              Text(
                " 12,611",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Userreviewcard(),
              Userreviewcard(),
              Userreviewcard()
            ],
          ),
        ),
      ),
    );
  }
}
