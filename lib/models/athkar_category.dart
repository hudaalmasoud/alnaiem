import 'package:alnaiem/models/sub_category_details.dart';

class AthkarCategory {
  String title;
  String imagePath;
  List<SubCategoryDetails> subCategoryDetails;

  AthkarCategory(String title, String imagePath,
      List<SubCategoryDetails> subCategoryDetails) {
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
