import 'package:flutter/material.dart';
import 'add_screen.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:alnaiem/util/database_helpers.dart';

class AddPrayer extends StatefulWidget {
  @override
  _AddPrayerState createState() => _AddPrayerState();
}

class _AddPrayerState extends State<AddPrayer> {
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
                        //TODO: check for not empty string
                        _save(newTitle);
                        print('number of prayers: ' + getCount().toString());
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
//                  child: ListView.separated(
//                    separatorBuilder: (context, index) => Divider(
//                      color: Colors.black,
//                    ),
//                    itemBuilder: (context, index) {
//                      return ListTile(
//                        title: Text(athkar[index].name,
//                            style: kCategoryButtonTextStyle),
//                      );
//                    },
//                    itemCount: athkar.length,
//                  ),
                  child: FutureBuilder<List>(
                    future: _read2(),
                    initialData: List(),
                    builder: (context, snapshot) {
                      return snapshot.hasData
                          ? new ListView.builder(
                              padding: const EdgeInsets.all(10.0),
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, i) {
                                return ListTile(
                                    title: new Text(snapshot.data[i].Text,
                                        style: kCategoryButtonTextStyle),
                                    trailing: (snapshot.data[i].id != 0)
                                        ? IconButton(
                                            icon: Icon(Icons.delete),
                                            onPressed: () {
                                              setState(() {
                                                //_delete(snapshot.data[i].id);
                                                _delete(snapshot.data[i].id);
                                              });
                                            })
                                        : null);
                              },
                            )
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    },
//                    builder: (context, snapshot) {
//                      return snapshot.hasData
//                          ? new ListView.builder(
//                              padding: const EdgeInsets.all(10.0),
//                              itemCount: snapshot.data.length,
//                              itemBuilder: (context, i) {
//                                return _buildRow(snapshot.data[i]);
//                              },
//                            )
//                          : Center(
//                              child: CircularProgressIndicator(),
//                            );
//                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<List<Prayers>> _read2() async {
    DatabaseHelper helper = DatabaseHelper.instance;

    List<Prayers> prayer = await helper.queryAllPrayerss();

    return prayer;
  }

  _save(String text) async {
    Prayers prayers = Prayers();
    prayers.Text = text;
    DatabaseHelper helper = DatabaseHelper.instance;
    int id = await helper.insert(prayers);
    print('inserted row: $id');
  }

  _delete(int id) async {
    DatabaseHelper helper = DatabaseHelper.instance;
    await helper.delete(id);
    print('delete row: $id');
  }

  //TODO: use this to allow adding max of 100 prayer
  Future<int> getCount() async {
    DatabaseHelper helper = DatabaseHelper.instance;
    int counter = await helper.getNumberOfPrayers();
    return counter;
  }
}
