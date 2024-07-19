import 'package:flutter/material.dart';
import 'package:signeup/wishlistcard/wishlistcard.dart';

class Wishlist extends StatelessWidget {
  Wishlist({super.key});
  List wish = [
    'images/papular/redpair.png',
    'images/papular/wredpair.png',
    'images/papular/blue.png',
    'images/papular/colorful.png',
    'images/papular/yellow.png',
    'images/papular/whiteair.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          toolbarHeight: 70,
          title: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Wishlist",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  child: GridView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            mainAxisExtent: 225),
                    itemBuilder: (context, index) => Wishlistcard(
                      key: UniqueKey(),
                      imagepath: wish[index],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
