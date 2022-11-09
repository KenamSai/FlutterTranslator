import 'package:first_flutter/cricketers/AppInputTextField.dart';
import 'package:first_flutter/cricketers/userGenderComponent.dart';
import 'package:first_flutter/cricketers/userImageComponent.dart';
import 'package:first_flutter/cricketers/userRoleComponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class createCricketers extends StatefulWidget {
  const createCricketers({super.key});

  @override
  State<createCricketers> createState() => _createCricketersState();
}

class _createCricketersState extends State<createCricketers> {
   final TextEditingController _nameController=TextEditingController();
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
            userRoleComponent(),
          ],
        ),
      ),
    );
  }
}
