import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/about_us.dart';
import 'screens/prayers_time.dart';
import 'screens/add_prayer.dart';

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
    AddNew(),
    AboutUs(),
    AddPrayer(),
    //Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Athkar Application',
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color(0xFF004c4c),
        primaryColor: Color(0xFF36a8a8),
        scaffoldBackgroundColor: Color(0xFFD3E2E8),
      ),
      home: Scaffold(
        body: Container(
          child: _pageOptions[_selectedPage],
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF36a8a8),
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
                title: Text(''),
                //backgroundColor: Color(0xFF36a8a8),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text(''),
                //backgroundColor: Color(0xFF36a8a8),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                title: Text(''),
                //backgroundColor: Color(0xFF36a8a8),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text(''),
                //backgroundColor: Color(0xFF36a8a8),
              ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.settings),
//              title: Text(''),
//            ),
            ],
          ),
        ),
      ),
    );
  }
}
