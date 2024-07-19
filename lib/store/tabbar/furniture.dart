import 'package:flutter/material.dart';
import 'package:signeup/home/containers/card/verticalCard.dart';
import 'package:signeup/store/tabbar/furnitureverticlecard.dart';
import 'package:signeup/store/tabbar/tabviewfurniture.dart';
import 'package:signeup/store/tabview.dart';

class furniture extends StatelessWidget {
  const furniture({
    super.key,
    required this.furnitures,
    required this.fname,
  });

  final List furnitures;
  final List fname;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Tabviewfurniture(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "You might like",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
            ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      child: GridView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20,
                                mainAxisExtent: 225),
                        itemBuilder: (context, index) => Furnitureverticlecard(
                          key: UniqueKey(),
                          imagepath: furnitures[index],
                          fname: fname[index],
                        ),
                      ),
                    ),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
