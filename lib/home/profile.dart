import 'package:flutter/material.dart';
import 'package:signeup/home/containers/containers.dart';
import 'package:signeup/home/containers/curvededges.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signeup/profileedit/profileedit.dart';
import 'package:switcher_button/switcher_button.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switchvalue = false;
  bool safemode = false;
  bool img = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: Curvededges(),
                child: Container(
                  color: HexColor("#4530b3"),
                  padding: const EdgeInsets.all(0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150,
                        right: -250,
                        child: Tcircularcontainer(
                          backgroundColor: HexColor("#dbe9f6").withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: Tcircularcontainer(
                          backgroundColor: HexColor("#dbe9f6").withOpacity(0.1),
                        ),
                      ),
                      Column(
                        children: [
                          AppBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            automaticallyImplyLeading: false,
                            toolbarHeight: 40,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "    Account",
                                  style: TextStyle(
                                      color:
                                          HexColor("#dbe9f6").withOpacity(0.9),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            /*actions: [
                              Stack(
                                children: [
                                  IconButton(
                                      onPressed: () {},
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
                                width: 20,
                              ),
                            ],*/
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("images/mann.jpeg"),
                            ),
                            title: Text(
                              "Manpreet Singh",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text("manpreet@gmail.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                            trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Profileedit(),
                                        ));
                                  });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account Settings",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    TextButton(onPressed: () {}, child: Text("View all"))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading:
                      Icon(Icons.home_outlined, color: HexColor("#4530b3")),
                  title: Text(
                    "My Addresses",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "set shopping delivery address",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Icon(Icons.shopping_cart_outlined,
                      color: HexColor("#4530b3")),
                  title: Text(
                    "My Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Add,remove products and move to checkout",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Icon(Icons.shopping_bag_outlined,
                      color: HexColor("#4530b3")),
                  title: Text(
                    "My Orders",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "In+progress and Completed Orders",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Icon(Icons.account_balance_outlined,
                      color: HexColor("#4530b3")),
                  title: Text(
                    "Bank Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Withdreaw balance to registred bank account",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading:
                      Icon(Icons.discount_outlined, color: HexColor("#4530b3")),
                  title: Text(
                    "My Coupons",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "List of all the disscounted coupon",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Icon(Icons.notifications_outlined,
                      color: HexColor("#4530b3")),
                  title: Text(
                    "Notifications",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "set any kind of notifications message",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Icon(Icons.privacy_tip_outlined,
                      color: HexColor("#4530b3")),
                  title: Text(
                    "Account Privacy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Manage data usage and  access to accounts",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "App settings",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                        leading: Icon(Icons.file_copy_outlined,
                            color: HexColor("#4530b3")),
                        title: Text(
                          "Load Data",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "upload data to your cloud Firebase",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                          leading: Icon(Icons.location_on_outlined,
                              color: HexColor("#4530b3")),
                          title: Text(
                            "Geolocation",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Set recommendation based on location",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          trailing: Switch(
                            inactiveTrackColor: Colors.white,
                            //inactiveThumbColor: HexColor("#4530b3"),
                            value: switchvalue,
                            onChanged: (value) {
                              setState(() {
                                switchvalue = value;
                              });
                            },
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                          leading: Icon(Icons.shield_outlined,
                              color: HexColor("#4530b3")),
                          title: Text(
                            "Safe Mode",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Search result is safe for all ages",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          trailing: Switch(
                            inactiveTrackColor: Colors.white,
                            //inactiveThumbColor: HexColor("#4530b3"),
                            value: safemode,
                            onChanged: (value) {
                              setState(() {
                                safemode = value;
                              });
                            },
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                          leading: Icon(Icons.image_outlined,
                              color: HexColor("#4530b3")),
                          title: Text(
                            "Hd image quality",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Set image quality to  be seen",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          trailing: Switch(
                            inactiveTrackColor: Colors.white,
                            //inactiveThumbColor: HexColor("#4530b3"),
                            value: img,
                            onChanged: (value) {
                              setState(() {
                                img = value;
                              });
                            },
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: HexColor("#4530b3")),
                      color: Colors.transparent,
                    ),
                    child: Center(
                        child: Text(
                      "Logout",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }
}
