import 'package:alnaiem/models/athkar_category.dart';

class CategoryUtil {
  List<AthkarCategory> athkars = new List<AthkarCategory>();

  CategoryUtil() {
    populateCategories();
  }

  void populateCategories() {
    athkars.add(
        new AthkarCategory('أذكار الصباح', 'assets/images/morningIcon.png'));
    athkars.add(
        new AthkarCategory('أذكار المساء', 'assets/images/eveningIcon.png'));
    athkars
        .add(new AthkarCategory('أذكار النوم', 'assets/images/sleepIcon.png'));
    athkars.add(
        new AthkarCategory('أذكار الوضوء', 'assets/images/ablutionIcon.jpg'));
    athkars.add(new AthkarCategory(
        'أذكار الأذان', 'assets/images/prayersCallIcon.png'));
    athkars
        .add(new AthkarCategory('أذكار الصلاة', 'assets/images/prayIcon.png'));
    athkars.add(new AthkarCategory(
        'أذكار ما بعد الصلاة', 'assets/images/afterPrayIcon.png'));
    athkars
        .add(new AthkarCategory('أذكار السفر', 'assets/images/travelIcon.png'));
    athkars.add(
        new AthkarCategory('أذكار الخلاء', 'assets/images/restroomIcon.png'));
    athkars
        .add(new AthkarCategory('أذكار اللباس', 'assets/images/clothIcon.png'));
    athkars
        .add(new AthkarCategory('أذكار الطعام', 'assets/images/forkIcon.png'));
    athkars.add(new AthkarCategory(
        'أذكار الخروج من المنزل', 'assets/images/outOfHomeIcon.png'));
    athkars.add(new AthkarCategory(
        'أذكار دخول المنزل', 'assets/images/backToHomeIcon.png'));
//    athkars
//        .add(new AthkarCategory('أذكار المسجد', 'assets/images/morning.png'));
//    athkars.add(new AthkarCategory(
//        'أذكار الآمور العارضة', 'assets/images/morning.png'));
  }

  List<AthkarCategory> getCategories() {
    return this.athkars;
  }
}
