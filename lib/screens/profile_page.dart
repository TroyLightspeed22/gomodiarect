import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gomodiarect/screens/settings_screen.dart';
import 'package:gomodiarect/screens/welcome_screen.dart';

class AppointmentScreen extends StatelessWidget{

  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF7165D6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/doctor1.jpg"),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Fake Person",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "+91 xxxxxxxxxx",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: MediaQuery.of(context).size.height / 1.5,
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            top: 20,
                            left: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {},
                                leading: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    CupertinoIcons.person,
                                    color: Colors.blue,
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  "Profile",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                              SizedBox(height: 20),
                              ListTile(
                                onTap: () {},
                                leading: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple.shade100,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.deepPurple,
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  "Notifications",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                              SizedBox(height: 20),
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Settings(),
                                      ));
                                },
                                leading: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade100,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.settings_suggest_outlined,
                                    color: Colors.green,
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  "General",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                              Divider(height: 40),
                              ListTile(
                                onTap: () {Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WelcomeScreen(),
                                    ));},
                                leading: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade100,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.logout,
                                    color: Colors.orange,
                                    size: 35,
                                  ),
                                ),
                                title: Text(
                                  "Log Out",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ]
                          ),
                        ),
                      ]
                    ),
                  ),
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}