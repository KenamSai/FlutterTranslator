import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class employList_item extends StatelessWidget {
  const employList_item({super.key, required this.data});
  final Map data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [employ_row_component("userId", data["userId"])]),
    );
  }

  employ_row_component(String s, dataValue) {
    return Container(
      child: Row(
        children: [Text(s), Text(dataValue)],
      ),
    );
  }
}
