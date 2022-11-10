import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class checkboxlist extends StatefulWidget {
  const checkboxlist({super.key});

  @override
  State<checkboxlist> createState() => _checkboxlistState();
}

class _checkboxlistState extends State<checkboxlist> {
  static int _len = 10;
  List<bool> isChecked = List.generate(_len, (index) => false);
  String _getTitle() =>
      "Checkbox Demo : Checked = ${isChecked.where((check) => check == true).length}, Unchecked = ${isChecked.where((check) => check == false).length}";
  String _title = "Checkbox Demo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_title'),
      ),
      body: ListView.builder(
        itemCount: _len,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item $index"),
            trailing: Checkbox(
                onChanged: (checked) {
                  setState(
                    () {
                      isChecked[index] = checked!;
                      _title = _getTitle();
                    },
                  );
                },
                value: isChecked[index]),
          );
        },
      ),
    );
  }
}