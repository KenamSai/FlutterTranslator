import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  dynamic jsonResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Details"),
      ),
      body: Center(
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://res.cloudinary.com/demo/image/upload/v1312461204/sample.jpg"),
              )),
              Data_Row_Component("flag", jsonResult["flag"]),
              Data_Row_Component("cid", jsonResult["cid"]),
              Data_Row_Component("cdid", jsonResult["cdid"]),
              Data_Row_Component("Name", jsonResult["cuser_name"]),
              Data_Row_Component("status", jsonResult["cstatus"]),
              Data_Row_Component("Mobile No", jsonResult["cmobileno"]),
            ],
          ),
        ),
      ),
    );
  }

  Row Data_Row_Component(String title, String data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.blue, fontSize: 25),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            data,
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchtheData();
  }

  fetchtheData() async {
    String data = await rootBundle.loadString("data.json");
    setState(() {
      jsonResult = json.decode(data);
    });
  }
}
