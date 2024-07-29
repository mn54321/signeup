import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:signeup/home/containers/curvededges.dart';
import 'package:signeup/shop/addtocart.dart';

class Detail2 extends StatefulWidget {
  @override
  State<Detail2> createState() => _Detail2State();
}

class _Detail2State extends State<Detail2> {
  bool _isSelected = false;

  bool _blue = false;

  bool _red = false;

  bool eu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Addtocart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: Curvededges(),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Stack(
                  children: [
                    const SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Center(
                          child: Image(
                            image: AssetImage("images/papular/blue.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 24,
                      bottom: 30,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          physics: AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          separatorBuilder: (_, __) => SizedBox(
                            width: 10,
                          ),
                          itemCount: 6,
                          itemBuilder: (_, index) => Container(
                            height: 80,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage("images/clothes/tshirt.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AppBar(
                      backgroundColor: Colors.transparent,
                      automaticallyImplyLeading: true,
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24, left: 16, bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(text: '5.0'),
                            TextSpan(text: ' (199)')
                          ]))
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            size: 24,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber),
                        child: Center(
                            child: Text(
                          "25%",
                          style: TextStyle(fontSize: 10),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$250",
                        style: TextStyle(fontSize: 10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$170",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Red colour nike shoe",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Status",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      Text("  in",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      Text(" Stock",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/brands/nike.png"),
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Nike",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Variation",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Price",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "\$25",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "\$20",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Stock",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "In Stock",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          "This is the description of the product it can go up to max 4 lines",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Colors",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextButton(onPressed: () {}, child: Text("View all"))
                    ],
                  ),
                  Row(
                    children: [
                      ChoiceChip(
                        checkmarkColor: Colors.white,
                        selectedColor: Colors.green,
                        backgroundColor: Colors.green,
                        labelPadding: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        label: Text(""),
                        selected: _isSelected,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.transparent)),
                        avatar: Container(
                          height: 50,
                          width: 50,
                        ),
                        labelStyle:
                            TextStyle(color: _isSelected ? Colors.white : null),
                        onSelected: (value) {
                          setState(() {
                            _isSelected = value;
                          });
                        },
                      ),
                      ChoiceChip(
                        checkmarkColor: Colors.white,
                        selectedColor: Colors.blue,
                        backgroundColor: Colors.blue,
                        labelPadding: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        label: Text(""),
                        selected: _blue,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.transparent)),
                        avatar: Container(
                          height: 50,
                          width: 50,
                        ),
                        labelStyle:
                            TextStyle(color: _blue ? Colors.white : null),
                        onSelected: (value) {
                          setState(() {
                            _blue = value;
                          });
                        },
                      ),
                      ChoiceChip(
                        checkmarkColor: Colors.white,
                        selectedColor: Colors.red,
                        backgroundColor: Colors.red,
                        labelPadding: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        label: Text(""),
                        selected: _red,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.transparent)),
                        avatar: Container(
                          height: 50,
                          width: 50,
                        ),
                        labelStyle:
                            TextStyle(color: _red ? Colors.white : null),
                        onSelected: (value) {
                          setState(() {
                            _red = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Size",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Wrap(spacing: 8, children: [
                        ChoiceChip(
                          checkmarkColor: Colors.white,
                          selectedColor: Colors.blue,
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          label: Text("EU 34"),
                          selected: eu,
                          labelStyle:
                              TextStyle(color: eu ? Colors.white : null),
                          onSelected: (value) {
                            setState(() {
                              eu = value;
                            });
                          },
                        ),
                        ChoiceChip(
                          checkmarkColor: Colors.white,
                          selectedColor: Colors.blue,
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          label: Text("EU 36"),
                          selected: _blue,
                          labelStyle:
                              TextStyle(color: _blue ? Colors.white : null),
                          onSelected: (value) {
                            setState(() {
                              _blue = value;
                            });
                          },
                        ),
                        ChoiceChip(
                          checkmarkColor: Colors.white,
                          selectedColor: Colors.blue,
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          label: Text("EU 38"),
                          selected: _isSelected,
                          labelStyle: TextStyle(
                              color: _isSelected ? Colors.white : null),
                          onSelected: (value) {
                            setState(() {
                              _isSelected = value;
                            });
                          },
                        ),
                        ChoiceChip(
                          checkmarkColor: Colors.white,
                          selectedColor: Colors.blue,
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          label: Text("EU 40"),
                          selected: _red,
                          labelStyle:
                              TextStyle(color: _red ? Colors.white : null),
                          onSelected: (value) {
                            setState(() {
                              _red = value;
                            });
                          },
                        ),
                        ChoiceChip(
                          checkmarkColor: Colors.white,
                          selectedColor: Colors.blue,
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          label: Text("EU 42"),
                          selected: _red,
                          labelStyle:
                              TextStyle(color: _red ? Colors.white : null),
                          onSelected: (value) {
                            setState(() {
                              _red = value;
                            });
                          },
                        ),
                        ChoiceChip(
                          checkmarkColor: Colors.white,
                          selectedColor: Colors.blue,
                          backgroundColor: Colors.white,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          label: Text("EU 44"),
                          selected: _red,
                          labelStyle:
                              TextStyle(color: _red ? Colors.white : null),
                          onSelected: (value) {
                            setState(() {
                              _red = value;
                            });
                          },
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      color: Colors.transparent,
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              overlayColor:
                                  WidgetStatePropertyAll(Colors.transparent),
                              surfaceTintColor:
                                  WidgetStatePropertyAll(Colors.transparent),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.blue)),
                          onPressed: () {},
                          child: Text(
                            "Checkout",
                            style: TextStyle(color: Colors.white),
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReadMoreText(
                    "Nike Air is our iconic innovation that uses pressurised air in a durable, flexible membrane to provide lightweight cushioning. The air compresses on impact and then immediately returns to its original shape and volume, ready for the next impact. We debuted Nike Air in 1979, and we've been continuously evolving and improving it ever since.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Reviews(199)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_right_outlined))
                    ],
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
