import 'package:first_flutter/cricketers/cricketerModelClass.dart';
import 'package:first_flutter/db/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sqflite/sqflite.dart';

class retrieveData extends StatefulWidget {
  const retrieveData({super.key});

  @override
  State<retrieveData> createState() => _retrieveDataState();
}

class _retrieveDataState extends State<retrieveData> {
  List<cricketerModelClass> userData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DatabaseHelper.instance.queryAllRows("Cricketers").then((value) {
      setState(() {
        value.forEach((element) {
          userData.add(
            cricketerModelClass(
                name: element["name"],
                state: element["state"],
                country: element["country"],
                dob: element["dob"],
                gender: element["gender"],
                userimage: element["userImage"]),
          );
        });
      });
    }).catchError((error) {
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("data display"),
          ),
        ),
        body: userData.isEmpty
            ? Center(
                child: Text("OOPs!"),
              )
            : Container(
                child: ListView.builder(
                  itemCount: userData.length,
                  itemBuilder: (context, index) {
                    final data = userData[index];
                    return Card(
                      color: Colors.blue[900],
                      child: Column(
                        children: [
                          Text(
                            "Name: ${data.name}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "gender: ${data.gender}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "country: ${data.country}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "state: ${data.state}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "dob: ${data.dob}",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ),
                              ),
                              GestureDetector(
                                child: Icon(Icons.delete,
                                color: Colors.red,),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ));
  }
}
//  DatabaseHelper.instance.queryAllRows("Cricketers").then((value) {
//       setState(() {
//         value.forEach((element) {
//           userData.add(cricketerModelClass(
//               name: element["name"],
//               state: element["state"],
//               country: element["country"],
//               dob: element["dob"],
//               gender: element["gender"],
//               userimage: element["userImage"]));
//         });
//       });
//     });