import 'package:flutter/material.dart';

class Alert {
  static void showSimpleAlert(title, content, buttonText, context)
  {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            FlatButton(
              child: Text(buttonText),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );
  }
}