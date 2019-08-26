import 'package:flutter/material.dart';

class CardBiru extends StatelessWidget {
  CardBiru({Key key, @required this.tinggi, @required this.lebar, this.teks})
      : super(key: key);
  final double tinggi, lebar;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        width: tinggi,
        height: lebar,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.lightBlue, Colors.white])),
        child: Text(
          teks,
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}

class CardHitam extends StatelessWidget {
  CardHitam({Key key, this.tinggi, this.teks, this.lebar, this.ukuranTeks})
      : super(key: key);  //contructor
  final String teks;  //property for this class
  final double tinggi, lebar;
  double ukuranTeks = 18.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        width: tinggi,
        height: lebar,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey, Colors.black])),
        child: Center(
          child: Text(
            teks,
            style: TextStyle(fontSize: ukuranTeks, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
