import 'package:first_flutter/cricketers/AppInputTextField.dart';
import 'package:first_flutter/cricketers/Counter.dart';
import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:first_flutter/cricketers/cricketerModelClass.dart';
import 'package:first_flutter/cricketers/userCountry.dart';
import 'package:first_flutter/cricketers/userGenderComponent.dart';
import 'package:first_flutter/cricketers/userImageComponent.dart';
import 'package:first_flutter/cricketers/userState.dart';
import 'package:first_flutter/cricketers/user_dob_component.dart';
import 'package:first_flutter/db/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class createCricketers extends StatefulWidget {
  const createCricketers({super.key});

  @override
  State<createCricketers> createState() => _createCricketersState();
}

class _createCricketersState extends State<createCricketers> {
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Cricketers Info"),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userImageComponent(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppInputTextfield(
                hintText: "Please enter Name",
                iconData: Icon(Icons.person),
                Controller: _nameController,
              ),
            ),
            userGenderComponent(),
            UserDobComponent(),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: userCountry(),
            ),
            userState(),
            TextButton(
              onPressed: ()async {
                // print("Name: ${_nameController.text}");
                // print("Gender: ${userGender.value}");
                // print("date: ${dob.value}");
                // print("Country is ${usercountry.value}");
                // print("state is ${selectedState.value}");
                final date=DateFormat("MMM d, yyyy").format(dob.value);
                final cricketersDetails=cricketerModelClass(
                  name: _nameController.text,
                  userimage: userGalleryImagePath.value?.path,
                  gender: userGender.value,
                  dob: date,
                  state: selectedState.value,
                  country: usercountry.value,
                );
                
                final DatabaseHelper _databaseService=DatabaseHelper.instance;
                final cricketerData=await _databaseService.insertInto(cricketersDetails.toJson(), "Cricketers");
                print("""cricketer details are
                $cricketerData""");
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.25,
                   height: MediaQuery.of(context).size.height * 0.05,
                  child: Center(
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            //Counter(),
          ],
        ),
      ),
    );
  }
}
