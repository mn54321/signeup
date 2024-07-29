import 'package:flutter/material.dart';

class Addtocart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddtocartState();
  }
}

class AddtocartState extends State<Addtocart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40)),
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "2",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Add to Cart",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(
                  12,
                ),
                backgroundColor: Colors.black,
                side: BorderSide(
                  color: Colors.black,
                )),
          ),
        ],
      ),
    );
  }
}
