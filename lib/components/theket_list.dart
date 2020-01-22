import 'package:alnaiem/models/athkar.dart';
import 'package:flutter/material.dart';
import 'package:alnaiem/components/theker_tile.dart';

class ThekerList extends StatefulWidget {
  final List<Athkar> athkar;
  ThekerList(this.athkar);

  @override
  _ThekerListState createState() => _ThekerListState();
}

class _ThekerListState extends State<ThekerList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemBuilder: (context, index) {
        return ThekerTile(name: widget.athkar[index].name);
      },
      itemCount: widget.athkar.length,
    );
  }
}
