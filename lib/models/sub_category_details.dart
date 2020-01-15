class SubCategoryDetails {
  String text;
  int totalCounter;
  int currentCounter;

  SubCategoryDetails(String text, int totalCounter, int currentCounter) {
    this.text = text;
    this.totalCounter = totalCounter;
    this.currentCounter = currentCounter;
  }

  void setTotalCounter(int counter) {
    this.totalCounter = counter;
  }

  void setCurrentCounter(int counter) {
    this.currentCounter = counter;
  }
}
