import 'package:flutter/material.dart';

class AlertDialogSave extends StatefulWidget {
  @override
  _AlertDialogSaveState createState() => _AlertDialogSaveState();
}

class _AlertDialogSaveState extends State<AlertDialogSave> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Save"),
      onPressed: (){
        showAlertDialogSave(context);
      },
    );
  }
  showAlertDialogSave(BuildContext context) {
  Widget cancelButton = FlatButton(
    child: Text("Tidak"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget saveButton = FlatButton(
    child: Text("Ya"),
    onPressed: () {
    //  sendToSecondScreen(context);
    },
  );

  AlertDialog btnSave = AlertDialog(
    title: Text("ALERT"),
    content: Text("Apakah anda yakin ingin menyimpan data?"),
    actions: <Widget>[
      cancelButton,
      saveButton,
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return btnSave;
      });
}
}