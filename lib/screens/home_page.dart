import 'package:flutter/material.dart';
import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/components/reusable_button.dart';
import 'package:alnaiem/screens/sub_category.dart';
import 'package:alnaiem/util/categoy_utils.dart';

CategoryUtil athkars = new CategoryUtil();
List<AthkarCategory> categories;

List<AthkarCategory> _athkarCategoryList = [];
List<AthkarCategory> _filteredList = [];
String filter = "";
TextEditingController controller;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controller = new TextEditingController();
    filter = "";
    categories = athkars.getCategories();
    List<AthkarCategory> tmpList = new List<AthkarCategory>();
    for (int i = 0; i < categories.length; i++) {
      tmpList.add(categories[i]);
    }
    setState(() {
      _athkarCategoryList = tmpList;
      _filteredList = _athkarCategoryList;
      controller.addListener(() {
        if (controller.text.isEmpty) {
          setState(() {
            filter = "";
            _filteredList = _athkarCategoryList;
          });
        } else {
          setState(() {
            filter = controller.text;
          });
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(
      () {
        if ((filter.isNotEmpty)) {
          List<AthkarCategory> tmpList = new List<AthkarCategory>();
          for (int i = 0; i < _athkarCategoryList.length; i++) {
            if (_athkarCategoryList[i]
                .title
                .toLowerCase()
                .contains(filter.toLowerCase())) {
              tmpList.add(_athkarCategoryList[i]);
            }
          }
          _filteredList = tmpList;
        }
      },
    );

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
            ),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60.0,
                    child: TextField(
                      autocorrect: false,
                      style: new TextStyle(color: Colors.black),
                      onChanged: (value) {},
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "بحث",
                        hintStyle: TextStyle(
                            fontSize: 20.0, color: kButtonBorderColor),
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: kButtonBorderColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            //color: kButtonBorderColor,
                            color: Colors.blue,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount:
                        _athkarCategoryList == null ? 0 : _filteredList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ReusableButton(
                        buttonTitle: _filteredList[index].title,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubCategory(
                                subCategoryTitle: _filteredList[index].title,
                                currentIndex: index,
                                athkarCategory: _filteredList[index],
                              ),
                            ),
                          );
                        },
                        color: (index % 2) == 0
                            ? kLightButtonColor
                            : kDarkButtonColor,
                        imagePath: _filteredList[index].imagePath,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
