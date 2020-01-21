import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_sub_category.dart';
import 'package:alnaiem/components/reusable_sub_category_button.dart';
import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/util/constants.dart';

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
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          kBackgroundImage,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.subCategoryTitle + '  ',
                  style: kHeaderTextStyle,
                ),
                ClipRRect(
                  borderRadius: new BorderRadius.circular(20.0),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(widget.athkarCategory.imagePath),
                    height: 35.0,
                    width: 35.0,
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.refresh),
                onPressed: () {
                  setState(
                    () {
                      widget.athkarCategory.reset();
                    },
                  );
                },
              ),
            ],
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
                  color: (i % 2) == 0 ? kLightButtonColor : kDarkButtonColor,
                  onTap: () {
                    setState(
                      () {
                        if (widget.athkarCategory.subCategoryDetails[i]
                                .currentCounter <
                            widget.athkarCategory.subCategoryDetails[i]
                                .totalCounter)
                          widget.athkarCategory.subCategoryDetails[i]
                              .setCurrentCounter(widget.athkarCategory
                                      .subCategoryDetails[i].currentCounter +
                                  1);
                      },
                    );
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }
}
