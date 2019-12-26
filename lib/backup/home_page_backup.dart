import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/components/reusable_button.dart';
import 'package:alnaiem/screens/sub_category.dart';
import 'package:alnaiem/util/categoy_utils.dart';

CategoryUtil athkars = new CategoryUtil();
List<AthkarCategory> categories;

class HomePageBackup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    athkars.populateCategories();
    categories = athkars.getCategories();

    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/theme2.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              //backgroundColor: Colors.transparent,
              title: Text(
            kAthkarAlMuslimHeaderText,
            style: TextStyle(
              color: Colors.white,
              //fontSize: 30.0,
            ),
          )),
          body: Column(
            children: <Widget>[
              for (var i = 0; i < categories.length; i = i + 2)
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableButton(
                          buttonTitle: categories[i].toString(),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SubCategory(
                                  subCategoryTitle: categories[i].toString(),
                                  currentIndex: i,
                                ),
                              ),
                            );
                          },
                          color: Color(0xFFb2d8d8),
                        ),
                      ),
                      Expanded(
                        child: ReusableButton(
                          buttonTitle: categories[i + 1].toString(),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SubCategory(
                                  subCategoryTitle:
                                      categories[i + 1].toString(),
                                  currentIndex: i,
                                ),
                              ),
                            );
                          },
                          //color: Color(0xFF66b2b2),
                          color: Color(0xFFb2d8d8),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
