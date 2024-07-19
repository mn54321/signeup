import 'package:flutter/material.dart';
import 'package:signeup/store/tabbar/cloths.dart';

class Clothesverticlecard extends StatelessWidget {
  final String imagepath;
  final String cname;
  Clothesverticlecard({Key? key, required this.imagepath, required this.cname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 247, 247),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Center(
                    child: Image(
                      height: 130,
                      width: 160,
                      image: AssetImage(imagepath),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 14,
                    left: 5,
                    child: Container(
                      height: 20,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "25%",
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    right: 5,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 248, 247, 247),
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    cname,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Levis",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
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
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "\$35.5",
                    style: TextStyle(fontWeight: FontWeight.w900),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          bottomRight: Radius.circular(21))),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
