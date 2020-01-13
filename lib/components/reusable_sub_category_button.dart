import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';

class ReusableSubCategoryButton extends StatelessWidget {
  ReusableSubCategoryButton(
      {@required this.onTap, @required this.buttonTitle, @required this.color});
  final Function onTap;
  final String buttonTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
//          image: new DecorationImage(
//            image: new AssetImage('assets/images/theme.jpg'),
//            fit: BoxFit.cover,
//          ),
          border: Border.all(
            color: Color(0xFFc4421a),
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: color,
          borderRadius: BorderRadius.circular(30.0),
        ),
        //child: Center(
        child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
          textDirection: TextDirection.rtl,
        ),
        //),
        margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
        padding:
            EdgeInsets.only(bottom: 10.0, top: 10.0, left: 10.0, right: 10.0),
      ),
    );
  }
}
