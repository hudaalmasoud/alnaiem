import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/about_us.dart';
import 'screens/add_prayer.dart';
import 'screens/prayers_time.dart';
import 'util/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    AddPrayer(),
    //PrayersTime(),
    AboutUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Athkar Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kHeaderColor,
        scaffoldBackgroundColor: Color(0xFFD3E2E8),
      ),
      home: Scaffold(
        body: Container(
          child: _pageOptions[_selectedPage],
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: kFooterColor,
            //iconSize: 30.0,
            currentIndex: _selectedPage,
            onTap: (int index) {
              setState(() {
                _selectedPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
                //backgroundColor: Color(0xFF36a8a8),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.create),
                label: '',
                //backgroundColor: Color(0xFF36a8a8),
              ),
//              BottomNavigationBarItem(
//                icon: Icon(Icons.timer),
//                title: Text(''),
//                //backgroundColor: Color(0xFF36a8a8),
//              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: '',
                //backgroundColor: Color(0xFF36a8a8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
