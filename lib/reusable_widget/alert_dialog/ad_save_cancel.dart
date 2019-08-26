import 'package:flutter/material.dart';
import 'package:reusable_widget/reusable_widget/alert_dialog/ad_save.dart';
import 'package:reusable_widget/reusable_widget/alert_dialog/ad_cancel.dart';

class AlertDialogSaveCancel extends StatefulWidget {
  @override
  _AlertDialogSaveCancelState createState() => _AlertDialogSaveCancelState();
}

class _AlertDialogSaveCancelState extends State<AlertDialogSaveCancel> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Row(
        children: <Widget>[
          AlertDialogSave(),
          AlertDialogCancel(),
        ],
      ),
      onPressed: (){
        
      },
    );
  }
}