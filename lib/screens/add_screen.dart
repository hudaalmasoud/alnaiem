import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';

class AddScreen extends StatelessWidget {
  final Function addCallback;
  AddScreen(this.addCallback);
  @override
  Widget build(BuildContext context) {
    String newTitle;

    return Container(
      //color: Color(0xff757575),
      //color: Colors.black,
      child: Container(
        padding: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: new TextStyle(color: Colors.black),
              onChanged: (newText) {
                newTitle = newText;
              },
            ),
            FlatButton(
              child: Text('إضافة', style: kCategoryButtonTextStyle),
              color: Color(0xFF66b2b2),
              onPressed: () {
                addCallback(newTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
