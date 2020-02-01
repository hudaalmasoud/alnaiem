import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/components/reusable_button.dart';
import 'package:alnaiem/screens/sub_category.dart';
import 'package:alnaiem/util/categoy_utils.dart';

CategoryUtil athkars = new CategoryUtil();
List<AthkarCategory> categories;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    categories = athkars.getCategories();

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
                kHomePageHeaderText,
                style: kHeaderTextStyle,
              ),
            ],
          )),
          body: ListView(
            children: <Widget>[
              for (var i = 0; i < categories.length; i++)
                ReusableButton(
                  buttonTitle: categories[i].title,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubCategory(
                          subCategoryTitle: categories[i].title,
                          currentIndex: i,
                          athkarCategory: categories[i],
                        ),
                      ),
                    );
                  },
                  color: (i % 2) == 0 ? kLightButtonColor : kDarkButtonColor,
                  imagePath: categories[i].imagePath,
                ),
            ],
          ),
        )
      ],
    );
  }
}
