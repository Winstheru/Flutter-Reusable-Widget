import 'package:flutter/material.dart';
import 'package:reusable_widget/reusable_widget/alert_dialog/ad_cancel.dart';
import 'package:reusable_widget/reusable_widget/alert_dialog/ad_save.dart';
import 'package:reusable_widget/reusable_widget/circle_image.dart';
import 'package:reusable_widget/reusable_widget/flight_details.dart';
import 'package:reusable_widget/reusable_widget/alert_dialog/ad_save_cancel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Reusable Page"),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              CircleImage(
                  "https://flutterappdev.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-25-at-12.54.42-PM.png"),
              Row(
                children: <Widget>[
                  CardBiru(
                    tinggi: 120,
                    lebar: 120,
                    teks: "Test",
                  ),
                  CardHitam(
                    tinggi: 150,
                    lebar: 150,
                    teks: "Hei",
                    ukuranTeks: 32.0,
                  ),
                ],
              ),
              // AlertDialogCancel(backpath: '/screen1',),
              AlertDialogSave(),
              AlertDialogSaveCancel(),
              RaisedButton(child: Text("Next Page"), onPressed: (){
                return Navigator.of(context).pushNamed('/screen1');
              },)
            ],
          ),
        ),
      ),
    );
  }
}
