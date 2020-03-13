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
        // height: 60.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: kButtonBorderColor,
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
        child: Padding(
          padding: EdgeInsets.only(
              bottom: 0,
              top: 0,
              left: 0,
              right: MediaQuery.of(context).size.width * 0.12),
          child: Text(
            buttonTitle,
            style: kCategoryButtonTextStyle,
            textDirection: TextDirection.rtl,
          ),
        ),
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
