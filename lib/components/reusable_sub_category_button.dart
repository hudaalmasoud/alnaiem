import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';

class ReusableSubCategoryButton extends StatefulWidget {
  ReusableSubCategoryButton(
      {@required this.onTap,
      @required this.buttonTitle,
      @required this.color,
      @required this.counter});
  final Function onTap;
  final String buttonTitle;
  final Color color;
  final String counter;

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
            color: Color(0xFFc4421a),
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: widget.color,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          widget.buttonTitle,
          style: kLargeButtonTextStyle,
          textDirection: TextDirection.rtl,
        ),
        //TODO: Remove
//        child: RichText(
//          textDirection: TextDirection.rtl,
//          text: TextSpan(
//            text: widget.buttonTitle,
//            style: kLargeButtonTextStyle,
//            children: <TextSpan>[
//              TextSpan(
//                  text: widget.counter,
//                  style: TextStyle(
//                      fontSize: 15.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.black,
//                      background: Paint()
//                        ..strokeWidth = 15.0
//                        //..color = Color(0xFFc4421a)
//                        ..color = Color(0xFFEEC0B3)
//                        ..style = PaintingStyle.stroke
//                        ..strokeJoin = StrokeJoin.round))
//            ],
//          ),
//        ),
        //TODO: Remove
//        child: TextField(
//          textAlign: TextAlign.left,
//          //controller: searchCtrl,
//          keyboardType: TextInputType.text,
//          decoration: InputDecoration(
//            hintText: widget.counter,
//            hintStyle: TextStyle(fontSize: 16),
//            border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(50),
//              borderSide: BorderSide(
//                width: 0,
//                style: BorderStyle.none,
//              ),
//            ),
//            filled: true,
//            contentPadding: EdgeInsets.all(16),
//            fillColor: Color(0xFFEEC0B3),
//          ),
//        ),
        margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
        padding:
            EdgeInsets.only(bottom: 10.0, top: 10.0, left: 10.0, right: 10.0),
      ),
    );
  }
}
