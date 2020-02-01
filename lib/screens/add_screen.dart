import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';

class AddScreen extends StatefulWidget {
  final Function addCallback;
  AddScreen(this.addCallback);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  String newTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              maxLines: 2,
              textAlign: TextAlign.center,
              autocorrect: false,
              style: new TextStyle(color: Colors.black),
              onChanged: (String newText) {
                setState(() {
                  newTitle = newText;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              child: Text(kAddText, style: kCategoryButtonTextStyle),
              color: kDarkButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(
                  color: kButtonBorderColor,
                  width: 1.0,
                ),
              ),
              onPressed: () {
                widget.addCallback(newTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
