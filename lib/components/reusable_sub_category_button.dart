import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:share/share.dart';

class ReusableSubCategoryButton extends StatefulWidget {
  ReusableSubCategoryButton(
      {@required this.onTap,
      @required this.buttonTitle,
      @required this.counter,
      @required this.color});
  final Function onTap;
  final String buttonTitle;
  final String counter;
  final Color color;

  @override
  _ReusableSubCategoryButtonState createState() =>
      _ReusableSubCategoryButtonState();
}

class _ReusableSubCategoryButtonState extends State<ReusableSubCategoryButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kButtonBorderColor,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: widget.color,
          borderRadius: BorderRadius.circular(30.0),
        ),
        //child: Center(
        child: GestureDetector(
          onLongPress: () {
            Share.share(widget.buttonTitle + KShareAppDetails);
          },
          child: Text(
            widget.buttonTitle + widget.counter,
            style: kLargeButtonTextStyle,
            textDirection: TextDirection.rtl,
          ),
        ),
        //),
        margin: EdgeInsets.only(
            top: 7.5,
            bottom: 7.5,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03),
        padding:
            EdgeInsets.only(bottom: 10.0, top: 10.0, left: 10.0, right: 10.0),
      ),
    );
  }
}
