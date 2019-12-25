import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/components/reusable_button.dart';
import 'package:alnaiem/screens/sub_category.dart';

AthkarCategory athkarCategory = AthkarCategory();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAthkarAlMuslimHeaderText),
      ),
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < athkarCategory.getCategory().length; i++)
            ReusableButton(
              buttonTitle: athkarCategory.getCategory()[i].toString(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubCategory(
                      subCategoryTitle:
                          athkarCategory.getCategory()[i].toString(),
                      currentIndex: i,
                    ),
                  ),
                );
              },
              color: (i % 2) == 0 ? Color(0xFFb2d8d8) : Color(0xFF66b2b2),
            ),
        ],
      ),
    );
  }
}
