import 'package:flutter/material.dart';
import 'font_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.blue,
          actions: [
            Icon(Icons.mail), //contoh widget biasa
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(Icons.access_alarm))
          ],
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(bottom: 0, left: 0, right: 0, top: 0),
            padding: EdgeInsets.only(bottom: 0, left: 0, right: 0, top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/images_belajar.png'),
                      height: 150,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Belajarlah!",
                        style: mainHeader,
                      ),
                    ),
                    Text(
                      "Belajarlah sampai kau mampus, karena kalau\n kau gak pandai mau jadi apa?",
                      style: subHeader,
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
