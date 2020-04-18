import 'package:flutter/material.dart';
import 'dart:math';

import 'package:program_diet/gemuk.dart';
import 'package:program_diet/kurus.dart';
import 'package:program_diet/normal.dart';
//import 'about_me.dart';

class DietResult extends StatelessWidget {
  DietResult(
      {@required this.namaLengkap,
      @required this.tahunLahir,
      @required this.jk,
      @required this.tinggiBadan,
      @required this.beratBadan});
  final String namaLengkap;
  final int tahunLahir;
  final String jk;
  final int tinggiBadan;
  final int beratBadan;

  @override
  Widget build(BuildContext context) {
    double diet = beratBadan / pow(tinggiBadan / 100, 2);
    String cDiet;
    if (diet >= 28)
      cDiet = "Gemuk:(";
    else if (diet >= 17.5)
      cDiet = "Normal:)";
    else
      cDiet = "Kurus:(";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Nama : Hai, $namaLengkap !",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            Text(
              "Umur : ${2020 - tahunLahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            Text(
              "Jenis Kelamin : $jk",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            Text(
              cDiet,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Container(
              
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Gemuk()),
                  );
                },

                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.pink,
                
                child: Text(
                  'Gemuk!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ),
            ),
             Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Normal()),
                  );
                },

                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.pink,
                // textColor: Colors.white,
                child: Text(
                  'Normal!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ),
            ),
             Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kurus()),
                  );
                },

                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.pink,
                // textColor: Colors.white,
                child: Text(
                  'Kurus!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Text(
              'Semoga Berhasil!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Indahnya Hidup Sehat',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.lightBlue,
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
