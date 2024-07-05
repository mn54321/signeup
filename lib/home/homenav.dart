import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signeup/card/TProductCardVertical.dart';
import 'package:signeup/home/containers/card/verticalCard.dart';
import 'package:signeup/home/containers/containers.dart';
import 'package:signeup/home/containers/curvededges.dart';
import 'package:signeup/home/containers/searchbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Homenav extends StatefulWidget {
  Homenav({super.key});

  @override
  State<Homenav> createState() => _HomenavState();
}

int _currentIndex = 0;

class _HomenavState extends State<Homenav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 249, 249),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: Curvededges(),
                child: Container(
                    color: HexColor("#4530b3"),
                    padding: const EdgeInsets.all(0),
                    child: SizedBox(
                      height: 400,
                      child: Stack(
                        children: [
                          Positioned(
                            top: -150,
                            right: -250,
                            child: Tcircularcontainer(
                              backgroundColor:
                                  HexColor("#dbe9f6").withOpacity(0.1),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            right: -300,
                            child: Tcircularcontainer(
                              backgroundColor:
                                  HexColor("#dbe9f6").withOpacity(0.1),
                            ),
                          ),
                          AppBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Good Day For Shopping",
                                  style: TextStyle(
                                      color:
                                          HexColor("#dbe9f6").withOpacity(0.9),
                                      fontSize: 11),
                                ),
                                Text(
                                  "Manpreet Singh",
                                  style: TextStyle(
                                      color:
                                          HexColor("#dbe9f6").withOpacity(0.9),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            actions: [
                              Stack(
                                children: [
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.shopping_bag_outlined,
                                        color: HexColor("#dbe9f6")
                                            .withOpacity(0.9),
                                      )),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                            color: HexColor("#dbe9f6"),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 40,
                              )
                            ],
                          ),
                          const Positioned(
                            top: 110,
                            right: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                searchbar(),
                                SizedBox(
                                  height: 35,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Popular Categories",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 240,
                            left: 0,
                            right: 0,
                            child: SizedBox(
                              height: 200,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 56,
                                          width: 56,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(56)),
                                          child: Center(
                                            child: Image(
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'images/shoe.png',
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Shoes",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  carousel(),
                  SizedBox(
                    height: 10,
                  ),
                  DotsIndicator(
                    dotsCount: list.length,
                    position: _currentIndex,
                    decorator: DotsDecorator(
                      activeColor: Colors.indigo,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Popular Products",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 600,
                      child: GridView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20,
                                mainAxisExtent: 225),
                        itemBuilder: (context, index) => gridcard(),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

  CarouselSlider carousel() {
    return CarouselSlider(
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(i), fit: BoxFit.cover)),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        height: 170,
        enlargeCenterPage: true,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  List list = [
    'images/banner1.png',
    'images/banner2.png',
    'images/banner3.png',
    'images/banner4.png',
  ];
}
