import 'package:flutter/material.dart';

class Tprofilemenu extends StatelessWidget {
  const Tprofilemenu(
      {super.key,
      this.icons = Icons.keyboard_arrow_right_outlined,
      required this.onpressed,
      required this.title,
      required this.value});

  final IconData icons;
  final VoidCallback onpressed;
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Expanded(
                flex: 5,
                child: Text(value, style: TextStyle(color: Colors.black87))),
            Expanded(
                child: Icon(
              icons,
              size: 18,
            )),
          ],
        ),
      ),
    );
  }
}
