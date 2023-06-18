import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{

  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Alex",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),//TextStyle
                ),//Text
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor1.jpg"),
                ),//CircleAvatar
              ],
            ),//Row
          ),//Padding
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),//BoxShadow
                    ],
                  ),//BoxDecoration
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),// BoxDecoration
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF7165D6),
                          size: 30,
                        ),//Icon
                      ),//Conatiner
                      SizedBox(height: 30),
                      Text(
                        "Clinic Visit",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ), // TextStyle
                      ), //Text
                      SizedBox(height: 10),
                      Text(
                        "Make an Appointment",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white54,
                        ), // TextStyle
                      ), //Text
                    ],
                  ),//Column
                ),//Container
              ),// InkWell
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),//BoxShadow
                    ],
                  ),//BoxDecoraton
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0EEFA),
                          shape: BoxShape.circle,
                        ),// BoxDecoration
                        child: Icon(
                          Icons.home_filled,
                          color: Color(0xFF7165D6),
                          size: 35,
                        ),//Icon
                      ),//Conatiner
                      SizedBox(height: 30),
                      Text(
                        "Home Visit",
                        style: TextStyle(
                          fontSize: 20,
                          // color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ), // TextStyle
                      ), //Text
                      SizedBox(height: 5),
                      Text(
                        "Call the doctor home",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ), // TextStyle
                      ), //Text
                    ],
                  ),//Column
                ),//Container
              ),//InkWell
            ],
          ),// Row
        ],
      ),//Column
    );//SingleChildScrollView
  }
}