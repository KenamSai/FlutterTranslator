import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class check_box extends StatefulWidget {
  const check_box({super.key});

  @override
  State<check_box> createState() => _check_boxState();
}

class _check_boxState extends State<check_box> {
  @override
  List<bool> isChecked = [false, false, false, false];
  List<String> items = ["Apple", "Banana", "Mango", "Orange"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Fruits"),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Text(
                "Select Your Favorite Fruit",
                style: TextStyle(fontSize: 20.0),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: checkModel(items[index], isChecked[index], index),
                  );
                },
              ),
              TextButton(
                onPressed: (() {
                  final Data = DataSelected();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Column(
                          children: [
                            Text("Selected Fruits are $Data "),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "OK",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }),
                child: Text(
                  "VIEW",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  CheckboxListTile checkModel(name, checked, index) {
    return CheckboxListTile(
      title: Text(name),
      controlAffinity: ListTileControlAffinity.leading,
      value: checked,
      onChanged: ((val) {
        setState(() {
          checked = val!;
          isChecked[index] = val!;
        });
      }),
    );
  }

  List<String> DataSelected() {
    List<String> Data = [];
    for (int i = 0; i < items.length; i++) {
      if (isChecked[i] == true) {
        Data.add(items[i]);
      }
    }
    return Data;
  }
}
