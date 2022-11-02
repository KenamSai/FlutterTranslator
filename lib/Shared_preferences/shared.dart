import 'package:first_flutter/Shared_preferences/sharePref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class shared extends StatelessWidget {
  const shared({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        TextButton(
            onPressed: () {
              sharedPref().writeData("Details", ["Saiteja", "kane", "Dhoni"]);
            },
            child: Text("Write Data")),
        TextButton(
            onPressed: () async {
              final read = await sharedPref().readData("Details");
              print(read);
            },
            child: Text("Read Data")),
        TextButton(
          onPressed: () {
            sharedPref().clearData();
          },
          child: Text("DELETE"),
        )
      ]),
    );
  }
}
