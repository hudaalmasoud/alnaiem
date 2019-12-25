import 'package:flutter/material.dart';

class AthkarCategory extends ChangeNotifier {
  List<String> category = [
    'أذكار الصباح',
    'أذكار المساء',
    'أذكار ما بعد الصلاة',
    'أذكار اللباس',
    'أذكار لطعام',
    'أذكار الخلاء',
    'أذكار الخروج من المنزل',
    'أذكار دخول المنزل',
    'دعاد الركوب',
    'أذكار السفر',
    'أذكار الوضود',
    'أذكار الأذان',
    'أذكار المسجد',
    'أذكار الصلاة',
    'أذكار النوم',
    'أذكار الآمور العارضة',
  ];

  List<String> getCategory() {
    return category;
  }
}
