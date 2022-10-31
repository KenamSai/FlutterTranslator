import 'dart:convert';

import 'package:first_flutter/Employee/employList_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class employ_list extends StatefulWidget {
  const employ_list({super.key});

  @override
  State<employ_list> createState() => _employ_listState();
}

class _employ_listState extends State<employ_list> {
  List<dynamic> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Employee list"),
        ),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final employ = list[index];
            return employList_item(data: employ);
          }),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchTheData();
  }

  fetchTheData() async {
    String data = await rootBundle.loadString("assets/employ.json");
    final jsonResult = json.decode(data);
    setState(() {
      list = jsonResult["Employees"];
    });
  }
}
