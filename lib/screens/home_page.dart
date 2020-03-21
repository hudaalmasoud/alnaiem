import 'package:alnaiem/components/favorite_widget.dart';
import 'package:alnaiem/components/reusable_button.dart';
import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/screens/sub_category.dart';
import 'package:alnaiem/util/categoy_utils.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/util/database_helpers.dart';
import 'package:flutter/material.dart';

CategoryUtil athkars = new CategoryUtil();
List<AthkarCategory> categories;

// This is used for the search
List<AthkarCategory> _athkarCategoryList = [];
List<AthkarCategory> _filteredList = [];
String filter = "";
TextEditingController controller;
bool _isVisible = false;

// This is used for favorite list
List<int> favorites;
bool showFavoritesOnly = false;

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
    _getAllFavs().then((result) {
      favorites = result;
    });
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
            if (showFavoritesOnly) {
              // get the result of the filtered search and within the favorite list
              if (_athkarCategoryList[i]
                      .title
                      .toLowerCase()
                      .contains(filter.toLowerCase()) &&
                  favorites.contains(_athkarCategoryList[i].id)) {
                tmpList.add(_athkarCategoryList[i]);
              }
            } else {
              if (_athkarCategoryList[i]
                  .title
                  .toLowerCase()
                  .contains(filter.toLowerCase())) {
                tmpList.add(_athkarCategoryList[i]);
              }
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
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  kHomePageHeaderText,
                  style: kHeaderTextStyle,
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                    if (_isVisible == false) {
                      controller.clear();
                    }
                    showFavoritesOnly = false;
                  });
                },
              ),
            ],
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: (showFavoritesOnly) ? kFavColor : Colors.white,
                  ),
                  onPressed: () async {
                    favorites = await _getAllFavs();
                    setState(() {
                      showFavoritesOnly = !showFavoritesOnly;

                      if (showFavoritesOnly) {
                        List<AthkarCategory> tmpList =
                            new List<AthkarCategory>();
                        for (int i = 0; i < _filteredList.length; i++) {
                          if (filter.isNotEmpty) {
                            if (_filteredList[i]
                                    .title
                                    .toLowerCase()
                                    .contains(filter.toLowerCase()) &&
                                favorites.contains(_filteredList[i].id)) {
                              tmpList.add(_filteredList[i]);
                            }
                          } else {
                            if (favorites.contains(_filteredList[i].id)) {
                              tmpList.add(_filteredList[i]);
                            }
                          }
                        }
                        _filteredList = tmpList;
                      } else {
                        List<AthkarCategory> tmpList =
                            new List<AthkarCategory>();
                        for (int i = 0; i < _athkarCategoryList.length; i++) {
                          if (filter.isNotEmpty) {
                            if (_athkarCategoryList[i]
                                .title
                                .toLowerCase()
                                .contains(filter.toLowerCase())) {
                              tmpList.add(_athkarCategoryList[i]);
                            }
                          } else {
                            tmpList.add(_athkarCategoryList[i]);
                          }
                        }
                        _filteredList = tmpList;
                      }
                    });
                  },
                );
              },
            ),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Visibility(
                      visible: _isVisible,
                      child: TextField(
                        autofocus: _isVisible,
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
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount:
                        _athkarCategoryList == null ? 0 : _filteredList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: <Widget>[
                          FavoriteWidget(
                            id: _filteredList[index].id,
                          ),
                          ReusableButton(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SubCategory(
                                      subCategoryTitle:
                                          _filteredList[index].title,
                                      currentIndex: index,
                                      athkarCategory: _filteredList[index],
                                    ),
                                  ),
                                );
                              },
                              buttonTitle: _filteredList[index].title,
                              color: (index % 2) == 0
                                  ? kLightButtonColor
                                  : kDarkButtonColor,
                              imagePath: _filteredList[index].imagePath),
                        ],
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

Future<List<int>> _getAllFavs() async {
  DatabaseHelper helper = DatabaseHelper.instance;
  List<int> favorites;
  List<Favorites> favoritesList = await helper.queryAllFav();
  if (favoritesList != null && favoritesList.isNotEmpty) {
    favorites = new List();
    for (Favorites fav in favoritesList) {
      favorites.add(fav.idFav);
    }
  } else {
    favorites = null;
  }
  return favorites;
}
