import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signeup/home/containers/card/verticalCard.dart';
import 'package:signeup/home/containers/storesearchbar.dart';
import 'package:signeup/store/tabbar/cloths.dart';
import 'package:signeup/store/tabbar/cosmetic.dart';
import 'package:signeup/store/tabbar/electronics.dart';
import 'package:signeup/store/tabbar/furniture.dart';
import 'package:signeup/store/tabbar/sports.dart';
import 'package:signeup/store/tabview.dart';

class Store extends StatelessWidget {
  Store({super.key});

  @override
  Widget build(BuildContext context) {
    List brand = [
      'images/brands/nike.png',
      'images/brands/puma.png',
      'images/brands/adidas.png',
      'images/brands/ikea.png',
    ];
    List sportss = [
      'images/papular/redpair.png',
      'images/papular/wredpair.png',
      'images/papular/blue.png',
      'images/papular/colorful.png',
      'images/papular/yellow.png',
      'images/papular/whiteair.png'
    ];
    List furnitures = [
      "images/furniture/chairgrey.png",
      "images/furniture/lamp.png",
      "images/furniture/table.png",
      "images/furniture/ychair.png",
      "images/furniture/dum.png",
      "images/furniture/sofa.png"
    ];

    List electronics = [
      "images/electronics/iphone.png",
      "images/electronics/head.png",
      "images/electronics/ac.png",
      "images/electronics/reffi.png",
      "images/electronics/vr.png",
      "images/electronics/wash.png"
    ];
    List clothess = [
      "images/clothes/hoodie.png",
      "images/clothes/leather.png",
      "images/clothes/tshirt.png",
      "images/clothes/shirt.png",
      "images/clothes/denim.png",
      "images/clothes/short.png"
    ];
    List cosmetics = [
      "images/cosmetic/gold.png",
      "images/cosmetic/sun.png",
      "images/cosmetic/gcream.png",
      "images/cosmetic/nevia.png",
      "images/cosmetic/primar.png",
      "images/cosmetic/rocher.png"
    ];
    List brandname = [
      'Nike',
      'Puma',
      'Adidas',
      'IKEA',
    ];

    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            title: Row(
              children: [
                Text(
                  "Store",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              Stack(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag_outlined,
                          color: Colors.black)),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
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
                width: 20,
              )
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: Colors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: EdgeInsets.all(20),
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Storesearchbar(),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Featured Brands",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "View all",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GridView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              mainAxisExtent: 88,
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey)),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Container(
                                          height: 56,
                                          width: 56,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Image(
                                            image: AssetImage(brand[index]),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  brandname[index],
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w800),
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
                                              "250 products ",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(45),
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: TabBar(
                            tabAlignment: TabAlignment.start,
                            isScrollable: true,
                            indicatorColor: Colors.indigo,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                child: Text("Sports"),
                              ),
                              Tab(
                                child: Text("Funiture"),
                              ),
                              Tab(
                                child: Text("Electronics"),
                              ),
                              Tab(
                                child: Text("Clothes"),
                              ),
                              Tab(
                                child: Text("Cosmetic"),
                              )
                            ]),
                      ),
                    ),
                  )
                ];
              },
              body: TabBarView(
                children: [
                  sports(sportss: sportss),
                  furniture(furnitures: furnitures, fname: [
                    'Chair',
                    'Lamp',
                    'Glass Table',
                    'Yellow Chair',
                    'Chair',
                    'Sofa'
                  ]),
                  Electronics(
                    electronicss: electronics,
                    Ename: [
                      'Iphone',
                      'Headset',
                      'LG Ac',
                      'Samsung Refrigrator',
                      'VR',
                      'Washing Machine'
                    ],
                  ),
                  clothes(
                    clothess: clothess,
                    clothname: [
                      'Blue Hoodie',
                      'Leather Jacket',
                      'Sky Tshirt',
                      'Printed Tshirt',
                      'Denim',
                      'Short',
                    ],
                  ),
                  cosmetic(
                    cosmetics: cosmetics,
                    cosname: [
                      'Gold ',
                      'Sunscream',
                      'Cream',
                      'Nevia',
                      'Primar',
                      'Elixir 79',
                    ],
                  ),
                ],
              ))),
    );
  }
}
