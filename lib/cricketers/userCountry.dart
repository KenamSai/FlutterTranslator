import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userCountry extends StatelessWidget {
  userCountry({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> Countries = ["aaa", "bbb", "ccc", "ddd", "eee", "fff"];
    return Column(
      children: [
        Text(
          "please select Country",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        ValueListenableBuilder(
          valueListenable: usercountry,
          builder: (context, value, child) {
            return DropdownButton(
              isExpanded: true,
              style: TextStyle(color: Colors.blue, fontSize: 20),
              hint: value.isEmpty
                  ? Text(
                      "Select Country",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    )
                  : Text(value),
              items: Countries.map(
                (val) {
                  return DropdownMenuItem<String>(
                    value: val,
                    child: Center(child: Text(val)),
                  );
                },
              ).toList(),
              onChanged: (val) {
                usercountry.value = val!;
              },
            );
          },
        )
      ],
    );
  }
}
