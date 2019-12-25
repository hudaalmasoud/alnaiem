import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/about_us.dart';

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
    AboutUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Athkar Application',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF004c4c),
        scaffoldBackgroundColor: Color(0xFFD3E2E8),
      ),
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF004c4c),
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text('About us'),
            ),
          ],
        ),
      ),
    );
  }
}
