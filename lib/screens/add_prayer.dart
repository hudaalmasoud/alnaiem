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
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              color: kButtonBorderColor,
              size: 30.0,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddScreen(
                  (newTitle) {
                    setState(
                      () {
                        //TODO: check for not empty string
                        //int numberOfRows = getCount();
                        //if (getCount() != 100) {
                        _save(newTitle);
                        //}
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
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
//              Container(
////                margin: EdgeInsets.only(
////                    top: 15.0, left: 7.0, right: 7.0, bottom: 15.0),
////              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02,
                      right: MediaQuery.of(context).size.width * 0.02,
                      top: MediaQuery.of(context).size.width * 0.02,
                      bottom: MediaQuery.of(context).size.width * 0.02),
//                  padding: EdgeInsets.only(
//                      bottom: 1.0, top: 1.0, left: 1.0, right: 1.0),
                  decoration: BoxDecoration(
                    color: kLightButtonColor.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: FutureBuilder<List>(
                    future: _read2(),
                    initialData: List(),
                    builder: (context, snapshot) {
                      return snapshot.hasData
                          ? ListView.separated(
                              separatorBuilder: (context, index) => Divider(
                                color: kButtonBorderColor,
                              ),
                              //padding: const EdgeInsets.only(left: 1.0),
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, i) {
                                return ListTile(
                                  title: new Text(snapshot.data[i].Text,
                                      style: kCategoryButtonTextStyle,
                                      textDirection: TextDirection.rtl),
                                  trailing: IconButton(
                                    icon: Image.asset(
                                      'assets/images/delete.png',
                                      width: 15.0,
                                      height: 15.0,
                                    ),
                                    onPressed: () {
                                      setState(
                                        () {
                                          showAlertDialog(
                                              context, snapshot.data[i].id);
                                          //_delete(snapshot.data[i].id);
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
                            )
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    },
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

    List<Prayers> prayer = await helper.queryAllPrayers();

    return prayer;
  }

  _save(String text) async {
    Prayers prayers = Prayers();
    prayers.Text = text;
    DatabaseHelper helper = DatabaseHelper.instance;
    int id = await helper.insert(prayers);
    //print('inserted row: $id');
  }

  _delete(int id) async {
    //print('delete row: $id');
    DatabaseHelper helper = DatabaseHelper.instance;
    await helper.delete(id);
  }

  //TODO: use this to allow adding max of 100 prayer
  Future<int> getCount() async {
    DatabaseHelper helper = DatabaseHelper.instance;
    int counter = await helper.getNumberOfPrayers();
    print('Number of rows: ' + counter.toString());
    return counter;
  }

  showAlertDialog(BuildContext context, int id) {
// set up the buttons
    Widget cancelButton = FlatButton(
      textColor: Colors.black,
      child: Text(
        "إلغاء",
        style: kAAlertButtonsTextStyle,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    Widget continueButton = FlatButton(
      textColor: Colors.black,
      child: Text(
        "تأكيد",
        style: kAAlertButtonsTextStyle,
      ),
      onPressed: () {
        setState(
          () {
            _delete(id);
            Navigator.of(context).pop();
          },
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      content: Text(
        "هل أنت متأكد من الإستمرار بالحذف؟",
        textDirection: TextDirection.rtl,
        style: kAAlertTextStyle,
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
