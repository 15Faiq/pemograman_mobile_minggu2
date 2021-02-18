import 'package:flutter/material.dart';
import 'foto.dart';
import 'kolom.dart';
const PrimaryColor = const Color(0xffFF0000);


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: PrimaryColor,
            title: Text("MyApp"),
            bottom: TabBar(
              tabs: [
                Text(
                    "Berita Terbaru",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Text(
                  "Pertandingan Hari Ini",
                   style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
          body: ListView(
            children: <Widget>[
              image(),
              kolom(),
              kolom(),
              kolom(),
              kolom(),
             
            ],
          ),
        ),
      ),
    );
  }
}
