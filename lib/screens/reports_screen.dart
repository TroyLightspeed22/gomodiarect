import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  Reports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Past Diagnosis History"),
          backgroundColor: Colors.deepPurpleAccent
      ),

      body: Column(
          children: <Widget>[
            Card (
        margin: EdgeInsets.all(10),
        color: Colors.purple[200],
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset('images/iris1.jpeg'),// leading: Icon (
              //     Icons.album,
              //     color: Colors.cyan,
              //     size: 45
              title: Text(
                "Level 0",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('22/7/2001'),
            ),
          ],
        ),
      ),
            Card (
              margin: EdgeInsets.all(10),
              color: Colors.blue[200],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.asset('images/iris1.jpeg'),// leading: Icon (
                    //     Icons.album,
                    //     color: Colors.cyan,
                    //     size: 45
                    title: Text(
                      "Level 1",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text('23/7/2001'),
                  ),
                ],
              ),
            ),

            Card (
              margin: EdgeInsets.all(10),
              color: Colors.purple[200],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.asset('images/iris1.jpeg'),// leading: Icon (
                    //     Icons.album,
                    //     color: Colors.cyan,
                    //     size: 45
                    title: Text(
                      "Level 2",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text('24/7/2001'),
                  ),
                ],
              ),
            ),

            Card (
              margin: EdgeInsets.all(10),
              color: Colors.blue[200],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.asset('images/iris1.jpeg'),// leading: Icon (
                    //     Icons.album,
                    //     color: Colors.cyan,
                    //     size: 45
                    title: Text(
                      "Level 3",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text('25/7/2001'),
                  ),
                ],
              ),
            ),
        ]

      )
    );
  }
}