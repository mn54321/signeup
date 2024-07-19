import 'package:flutter/material.dart';
import 'package:signeup/home/containers/card/verticalCard.dart';
import 'package:signeup/store/tabbar/clothesverticlecard.dart';
import 'package:signeup/store/tabbar/tabviewcloths.dart';
import 'package:signeup/store/tabview.dart';

class clothes extends StatelessWidget {
  clothes({
    super.key,
    required this.clothess,
    required this.clothname,
  });

  final List clothess;
  final List clothname;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Tabviewcloths(),
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
                        itemBuilder: (context, index) => Clothesverticlecard(
                          key: UniqueKey(),
                          imagepath: clothess[index],
                          cname: clothname[index],
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
