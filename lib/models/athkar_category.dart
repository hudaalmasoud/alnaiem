import 'package:flutter/material.dart';

class AthkarCategory {
  String title;
  String imagePath;

  AthkarCategory(String title, String imagePath) {
    this.title = title;
    this.imagePath = imagePath;
  }

  List<String> category = [
    'أذكار الصباح',
    'أذكار المساء',
    'أذكار ما بعد الصلاة',
    'أذكار النوم',
    'أذكار الوضوء',
    'أذكار الأذان',
    'أذكار الصلاة',
    'أذكار السفر',
    'أذكار اللباس',
    'أذكار الطعام',
    'أذكار الخلاء',
    'أذكار الخروج من المنزل',
    'أذكار دخول المنزل',
    'دعاد الركوب',
    'أذكار المسجد',
    'أذكار الآمور العارضة',
  ];
}
