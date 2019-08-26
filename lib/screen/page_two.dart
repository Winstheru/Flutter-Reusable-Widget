import 'package:flutter/material.dart';
import 'package:reusable_widget/reusable_widget/alert_dialog/ad_cancel.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Hello Page 2"),
        AlertDialogCancel(backpath: '/home',),
      ],
    );
  }
}