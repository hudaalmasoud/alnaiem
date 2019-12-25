import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Athkar Application',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF004c4c),
        scaffoldBackgroundColor: Color(0xFFD3E2E8),
      ),
//      theme: ThemeData(
//        primarySwatch: Colors.lightGreen,
//      ),
      home: HomePage(),
    );
  }
}
