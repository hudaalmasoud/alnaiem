import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/components/reusable_button.dart';
import 'package:alnaiem/screens/sub_category.dart';

AthkarCategory athkarCategory = AthkarCategory();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        )
      ],
    );

//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.transparent,
//        //title: Text(kAthkarAlMuslimHeaderText),
//        title: Text(
//          kAthkarAlMuslimHeaderText,
//        ),
//        leading: IconButton(
//          icon: Image.asset('assets/images/theme.jpg'),
//          onPressed: () {},
//        ),
//      ),
//      body: ListView(
//        children: <Widget>[
//          for (var i = 0; i < athkarCategory.getCategory().length; i++)
//            ReusableButton(
//              buttonTitle: athkarCategory.getCategory()[i].toString(),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => SubCategory(
//                      subCategoryTitle:
//                          athkarCategory.getCategory()[i].toString(),
//                      currentIndex: i,
//                    ),
//                  ),
//                );
//              },
//              color: (i % 2) == 0 ? Color(0xFFb2d8d8) : Color(0xFF66b2b2),
//            ),
//        ],
//      ),
//    );
  }
}
