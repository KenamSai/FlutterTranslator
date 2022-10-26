import 'package:first_flutter/Project1/ListViewItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewSample extends StatefulWidget {
  const ListViewSample({super.key});

  @override
  State<ListViewSample> createState() => _ListViewSampleState();
}

class _ListViewSampleState extends State<ListViewSample> {
  List<String> stateList = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu and Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal",
    "Andaman and Nicobar Islands",
    "Chandigarh",
    "Dadra and Nagar Haveli",
    "Daman and Diu",
    "Delhi",
    "Lakshadweep",
    "Puducherry"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
          itemCount: stateList.length,
          itemBuilder: (context, index) {
            final String state = stateList[index];
            return ListViewItem(
              state: state,
              //callback implementation
              callbackValue: ((value) {
                showAlert(state);
              }),
            );
          }

          // return Card(
          //   child: Center(
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text("$state"),
          //     ),
          //   ),
          // );

          ),
    );
  }

  showAlert(String state, {String text = "<>"}) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return CupertinoAlertDialog(
            title: Text("selected state is $state $text"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ok"),
              )
            ],
          );
        });
  }
}
