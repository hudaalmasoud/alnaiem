import 'package:alnaiem/models/sub_category_details.dart';

class AthkarCategory {
  int id;
  String title;
  String imagePath;
  List<SubCategoryDetails> subCategoryDetails;

  AthkarCategory(int id, String title, String imagePath,
      List<SubCategoryDetails> subCategoryDetails) {
    this.id = id;
    this.title = title;
    this.imagePath = imagePath;
    this.subCategoryDetails = subCategoryDetails;
  }

  void reset() {
    for (final subCategoryDetail in this.subCategoryDetails) {
      subCategoryDetail.setCurrentCounter(0);
    }
  }
}
