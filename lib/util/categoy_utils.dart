import 'package:alnaiem/models/athkar_category.dart';

class CategoryUtil {
  List<AthkarCategory> athkars = new List<AthkarCategory>();

  void populateCategories() {
    athkars
        .add(new AthkarCategory('أذكار الصباح', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار المساء', 'assets/images/morning.png'));
    athkars.add(
        new AthkarCategory('أذكار ما بعد الصلاة', 'assets/images/morning.png'));
    athkars.add(new AthkarCategory('أذكار النوم', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار الوضوء', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار الأذان', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار الصلاة', 'assets/images/morning.png'));
    athkars.add(new AthkarCategory('أذكار السفر', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار اللباس', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار الطعام', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار الخلاء', 'assets/images/morning.png'));
    athkars.add(new AthkarCategory(
        'أذكار الخروج من المنزل', 'assets/images/morning.png'));
    athkars.add(
        new AthkarCategory('أذكار دخول المنزل', 'assets/images/morning.png'));
    athkars.add(new AthkarCategory('دعاد الركوب', 'assets/images/morning.png'));
    athkars
        .add(new AthkarCategory('أذكار المسجد', 'assets/images/morning.png'));
    athkars.add(new AthkarCategory(
        'أذكار الآمور العارضة', 'assets/images/morning.png'));
  }

  List<AthkarCategory> getCategories() {
    return this.athkars;
  }
}
