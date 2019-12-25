import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_sub_category.dart';
import 'package:alnaiem/components/reusable_button.dart';

AthkarSubCategory athkarSubCategoryModel = AthkarSubCategory();

class SubCategory extends StatelessWidget {
  SubCategory({@required this.subCategoryTitle, @required this.currentIndex});

  final String subCategoryTitle;
  final int currentIndex;
  int counter = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subCategoryTitle),
      ),
      body: ListView(
        children: <Widget>[
          for (var i = 0;
              i <
                  athkarSubCategoryModel
                      .getSubCategoryByIndex(currentIndex)
                      .length;
              i++)
            ReusableButton(
              buttonTitle: athkarSubCategoryModel
                  .getSubCategoryByIndex(currentIndex)[i]
                  .toString(),
              color: ((i % 2 == 0) & (counter > 0))
                  ? Color(0xFFb2d8d8)
                  : Color(0xFF66b2b2),
              onTap: () {},
            ),
        ],
      ),
    );
  }
}
