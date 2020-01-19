import 'package:alnaiem/models/athkar.dart';
import 'package:flutter/material.dart';
import 'package:alnaiem/components/theker_tile.dart';

class TasksList extends StatefulWidget {
  final List<Athkar> athkar;
  TasksList(this.athkar);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemBuilder: (context, index) {
//        return ThekerTile(
//          name: widget.athkar[index].name,
//          isDeleted: widget.athkar[index].isDeleted,
//        );
//      },
//      itemCount: widget.athkar.length,
//    );

    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemBuilder: (context, index) {
        return ThekerTile(
          name: widget.athkar[index].name,
          isDeleted: widget.athkar[index].isDeleted,
        );
      },
      itemCount: widget.athkar.length,
    );
  }
}
