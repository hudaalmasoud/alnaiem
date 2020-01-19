import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';

class ThekerTile extends StatelessWidget {
  final bool isDeleted;
  final String name;

  ThekerTile({this.isDeleted, this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name, style: kCategoryButtonTextStyle),
    );
  }
}
