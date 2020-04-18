import 'package:flutter/material.dart';
//import 'bmi.dart';
//import 'package:flutter/cupertino.dart';

class Gemuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: new AppBar(
            backgroundColor: Colors.blueGrey,
            title: new Center(
              child: new Text("Resep Sehat!"),
            )),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/diet.jpg',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "1. Perbanyak konsumsi makanan berserat tinggi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  height: 2.0,
                ),
              ),
              Text(
                "2. Kurangi Junkfood atau makanan cepat saji",
                style:
                    TextStyle(color: Colors.white, fontSize: 15.0, height: 2.0),
              ),
              Text(
                "3. Olahraga seperti angkat beban dan workout",
                style:
                    TextStyle(color: Colors.white, fontSize: 15.0, height: 2.0),
              ),
            ])));
  }
}
