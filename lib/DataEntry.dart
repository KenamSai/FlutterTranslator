import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DataEntry extends StatelessWidget {
  const DataEntry({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _idController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Entry"),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "enter name"),
              controller: _nameController,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "enter id"),
              controller: _idController,
            ),
            TextButton(onPressed:null , child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
