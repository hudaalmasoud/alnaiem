import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/util/database_helpers.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget({@required this.id});

  final int id;

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    // default favorite color is grey
    Color favIconColor = kFavDefaultColor;

    return FutureBuilder<bool>(
      future: _getFav(widget.id), // check if the category is in favorite list
      builder: (context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasData && snapshot.data == true) {
          favIconColor = kFavColor; // if it is in the list, make it red
        } else {
          favIconColor = kFavDefaultColor; // make it grey
        }
        return Container(
          child: IconButton(
            onPressed: () async {
              // on clicking the heart icon, check the DB
              bool exists = await _getFav(widget.id);
              if (exists) {
                _delete(widget.id);
                setState(() {
                  favIconColor = kFavDefaultColor;
                });
              } else {
                _save(widget.id, "");
                setState(() {
                  favIconColor = kFavColor;
                });
              }
            },
            icon: Icon(
              Icons.favorite,
              color: favIconColor,
            ),
          ),
        );
      },
    );
  }
}

_save(int idFav, String color) async {
  Favorites favorite = Favorites();
  favorite.idFav = idFav;
  favorite.favText = color;
  DatabaseHelper helper = DatabaseHelper.instance;
  int id = await helper.insertFav(favorite);
}

Future<bool> _getFav(int idFav) async {
  DatabaseHelper helper = DatabaseHelper.instance;
  var favorite = await helper.queryFav(idFav);
  return favorite != null;
}

_delete(int id) async {
  DatabaseHelper helper = DatabaseHelper.instance;
  await helper.deleteFav(id);
}
