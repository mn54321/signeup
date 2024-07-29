import 'package:flutter/material.dart';

class Adresscontainer extends StatefulWidget {
  const Adresscontainer(
      {super.key,
      required this.name,
      required this.phoneNumber,
      required this.Address,
      required this.country});
  final String name;
  final String phoneNumber;
  final String Address;
  final String country;

  @override
  State<Adresscontainer> createState() => _AdresscontainerState();
}

class _AdresscontainerState extends State<Adresscontainer> {
  bool selected = false;
  void onselected() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onselected,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: selected
                  ? Colors.indigo.withOpacity(0.5)
                  : Colors.grey.shade300),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          selected ? Icons.check_circle_rounded : null,
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  widget.phoneNumber,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
                Text(
                  widget.Address,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
                Text(
                  "United Kingdom",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
