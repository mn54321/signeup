import 'package:flutter/material.dart';
import 'package:signeup/home/profile.dart';
import 'package:signeup/profileedit/tprofilemenu.dart';

class Profileedit extends StatefulWidget {
  const Profileedit({super.key});

  @override
  State<Profileedit> createState() => _ProfileeditState();
}

class _ProfileeditState extends State<Profileedit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: ClipOval(
                        child: Image.asset(
                          "images/mann.jpeg",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Change Profile Picture ",
                            style: TextStyle(color: Colors.grey, fontSize: 13)))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Profile Information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 5,
              ),
              Tprofilemenu(
                title: 'Name',
                value: 'Manpreet Singh',
                onpressed: () {},
              ),
              Tprofilemenu(
                title: 'Username',
                value: 'Manpreet Singh',
                onpressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Personal Information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Tprofilemenu(
                title: 'User ID',
                icons: Icons.copy,
                value: '3345',
                onpressed: () {},
              ),
              Tprofilemenu(
                title: 'E-mail',
                value: 'manpreet@gmail.com',
                onpressed: () {},
              ),
              Tprofilemenu(
                title: 'Phone Number',
                value: '+44 7767945663',
                onpressed: () {},
              ),
              Tprofilemenu(
                title: 'Gender',
                value: 'Male',
                onpressed: () {},
              ),
              Tprofilemenu(
                title: 'Date of Birth',
                value: '18 Dec,1997',
                onpressed: () {},
              ),
              Divider(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Close Account",
                    style: TextStyle(color: Colors.red.shade900),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
