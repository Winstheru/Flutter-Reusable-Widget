import 'package:flutter/material.dart';

class AlertDialogCancel extends StatelessWidget {
  AlertDialogCancel({Key key, this.backpath, this.alertTitle, this.alertContent}) : super(key: key);
  final String backpath, alertTitle, alertContent;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Cancel"),
      onPressed: (){
        showAlertDialogCancel(context);
      },
    );
  }

  showAlertDialogCancel(BuildContext context) {
  Widget notCancelButton = FlatButton(
    child: Text("Tidak"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget cancelButton = FlatButton(
    child: Text("Ya"),
    onPressed: () {
      //fill backpath with the route you want to back to, for example : '/home'
      Navigator.of(context).pushNamedAndRemoveUntil(backpath, (Route<dynamic> route) => false);
    },
  );

  //membuat objek AlertDialog
  AlertDialog btnCancel = AlertDialog(
    title: Text(alertTitle),
    content: Text(alertContent),
    actions: <Widget>[
      notCancelButton,
      cancelButton,
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return btnCancel;
      });
}
}