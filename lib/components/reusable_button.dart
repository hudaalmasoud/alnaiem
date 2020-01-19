import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton(
      {@required this.onTap,
      @required this.buttonTitle,
      @required this.color,
      @required this.imagePath});
  final Function onTap;
  final String buttonTitle;
  final Color color;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        //width: 100.0,
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
          borderRadius: BorderRadius.circular(15.0),
          image: new DecorationImage(
            image: new AssetImage(imagePath),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            alignment: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kCategoryButtonTextStyle,
            textDirection: TextDirection.rtl,
          ),
        ),
        margin: EdgeInsets.only(
            top: 15.0,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05),
        padding:
            EdgeInsets.only(bottom: 10.0, top: 10.0, left: 10.0, right: 10.0),
      ),
    );
  }
}
