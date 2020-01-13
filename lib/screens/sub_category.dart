import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_sub_category.dart';
import 'package:alnaiem/components/reusable_sub_category_button.dart';

AthkarSubCategory athkarSubCategoryModel = AthkarSubCategory();

class SubCategory extends StatelessWidget {
  SubCategory({@required this.subCategoryTitle, @required this.currentIndex});

  final String subCategoryTitle;
  final int currentIndex;
  int counter = 5;

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
            title: Text(subCategoryTitle),
            actions: <Widget>[
              Icon(Icons.refresh),
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
                  i <
                      athkarSubCategoryModel
                          .getSubCategoryByIndex(currentIndex)
                          .length;
                  i++)
                ReusableSubCategoryButton(
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
        )
      ],
    );
  }
}
