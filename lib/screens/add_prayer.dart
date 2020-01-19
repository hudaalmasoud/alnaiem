import 'package:flutter/material.dart';
import 'package:alnaiem/components/theket_list.dart';
import 'add_screen.dart';
import 'package:alnaiem/models/athkar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPrayer extends StatefulWidget {
  @override
  _AddPrayerState createState() => _AddPrayerState();
}

class _AddPrayerState extends State<AddPrayer> {
  List<Athkar> athkar = [
    Athkar(name: 'Huda 1'),
    Athkar(name: 'Huda 2'),
    Athkar(name: 'Huda 2'),
    Athkar(name: 'Huda 3'),
  ];

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
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFFb2d8d8),
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddScreen((newTitle) {
                  setState(() {
                    athkar.add(Athkar(name: newTitle, isDeleted: false));
                  });
                }),
              );
            },
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('إضافة ذِكر/ دعاء جديد'),
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
                  //padding: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.only(
                      bottom: 10.0, top: 10.0, left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFb2d8d8).withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: TasksList(athkar),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
