import 'package:flutter/material.dart';
import 'package:signeup/home/containers/card/verticalCard.dart';
import 'package:signeup/store/tabbar/cosmeticverticlecard.dart';
import 'package:signeup/store/tabbar/tabviewcosmetic.dart';
import 'package:signeup/store/tabview.dart';

class cosmetic extends StatelessWidget {
  const cosmetic({
    super.key,
    required this.cosmetics,
    required this.cosname,
  });

  final List cosmetics;
  final List cosname;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Tabviewcosmetic(),
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
                        itemBuilder: (context, index) => Cosmeticverticlecard(
                          key: UniqueKey(),
                          imagepath: cosmetics[index],
                          cosname: cosname[index],
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
