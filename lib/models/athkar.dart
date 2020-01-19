class Athkar {
  final String name;
  bool isDeleted;

  Athkar({this.name, this.isDeleted = false});

  void togleDeleted() {
    isDeleted = !isDeleted;
  }
}
