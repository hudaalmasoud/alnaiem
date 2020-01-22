import 'package:flutter/material.dart';
import 'add_screen.dart';
import 'package:alnaiem/models/athkar.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPrayer extends StatefulWidget {
  @override
  _AddPrayerState createState() => _AddPrayerState();
}

class _AddPrayerState extends State<AddPrayer> {
  int _counter = 0;
  List<Athkar> athkar = [
    Athkar(name: 'Huda'),
    Athkar(name: 'هدهد ابو سمرة'),
  ];

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  //Loading counter value on start
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  //Incrementing counter after click
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

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
          floatingActionButton: FloatingActionButton(
            backgroundColor: kLightButtonColor,
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddScreen(
                  (newTitle) {
                    setState(
                      () {
                        athkar.add(Athkar(name: newTitle));
                      },
                    );
                  },
                ),
              );
            },
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(kAddPageHeaderText, style: kHeaderTextStyle),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15.0, left: 7.0, right: 7.0),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05),
                  padding: EdgeInsets.only(
                      bottom: 10.0, top: 10.0, left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                    color: kLightButtonColor.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.black,
                    ),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(athkar[index].name,
                            style: kCategoryButtonTextStyle),
                      );
                    },
                    itemCount: athkar.length,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
