import 'package:flutter/material.dart';
import 'package:signeup/profileedit/Adresscontainer.dart';

class Addresses extends StatefulWidget {
  @override
  State<Addresses> createState() => _AddressesState();
}

bool selected = false;
bool slected1 = false;

class _AddressesState extends State<Addresses> {
  List<Map<String, String>> widgetList = [
    {
      "name": "Johan dee",
      " phoneNumber": "(+44) 4422556677",
      "Address": "03,Althrop Road,Luton",
      " country": "United Kindom"
    },
    {
      "name": "Manpreet Singh",
      "phoneNumber": "(+91)5566778899",
      "Address": "Punjab",
      "country": "India"
    }
  ];

  void onselected() {
    setState(() {
      selected = !selected;
      slected1 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Addresses",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          automaticallyImplyLeading: true,
        ),
        body: ListView.builder(
          itemCount: widgetList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: onselected,
                child: Adresscontainer(
                    selected: selected,
                    name: widgetList[index]['name']!,
                    phoneNumber: widgetList[index]['phoneNumber']!,
                    Address: widgetList[index]['Address']!,
                    country: widgetList[index]['country']!));
          },
        ));
  }
}
