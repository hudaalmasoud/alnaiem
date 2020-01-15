import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_sub_category.dart';
import 'package:alnaiem/components/reusable_sub_category_button.dart';
import 'package:alnaiem/models/athkar_category.dart';

AthkarSubCategory athkarSubCategoryModel = AthkarSubCategory();

class SubCategory extends StatefulWidget {
  SubCategory(
      {@required this.subCategoryTitle,
      @required this.currentIndex,
      @required this.athkarCategory});

  final String subCategoryTitle;
  final int currentIndex;
  final AthkarCategory athkarCategory;

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  Color evenColor = Color(0xFFb2d8d8);
  Color oddColor = Color(0xFF66b2b2);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/theme4.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(widget.subCategoryTitle),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    widget.athkarCategory.reset();
                  });
                },
              ),
            ],
//            title: Image.asset(
//              'assets/images/eveningIcon.png',
//              fit: BoxFit.cover,
//              height: 32,
//              width: 32,
//              color: Colors.black.withOpacity(0.1),
//            ),
          ),
          body: ListView(
            children: <Widget>[
              for (var i = 0;
                  i < widget.athkarCategory.subCategoryDetails.length;
                  i++)
                ReusableSubCategoryButton(
                  buttonTitle:
                      widget.athkarCategory.subCategoryDetails[i].text +
                          ' (' +
                          (widget.athkarCategory.subCategoryDetails[i]
                                      .totalCounter -
                                  widget.athkarCategory.subCategoryDetails[i]
                                      .currentCounter)
                              .toString() +
                          ')',
                  color: (i % 2) == 0 ? evenColor : oddColor,
                  onTap: () {
                    setState(() {
                      if (widget.athkarCategory.subCategoryDetails[i]
                              .currentCounter <
                          widget.athkarCategory.subCategoryDetails[i]
                              .totalCounter)
                        widget.athkarCategory.subCategoryDetails[i]
                            .setCurrentCounter(widget.athkarCategory
                                    .subCategoryDetails[i].currentCounter +
                                1);
                    });
                  },
                ),
            ],
          ),
        )
      ],
    );
  }
}
