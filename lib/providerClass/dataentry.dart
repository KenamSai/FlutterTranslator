import 'package:first_flutter/providerClass/dataview.dart';
import 'package:first_flutter/providerClass/providerData.dart';
import 'package:first_flutter/providerClass/text_field.dart';
import 'package:first_flutter/routes/App_Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class dataentry extends StatelessWidget {
  const dataentry({super.key});

  @override
  Widget build(BuildContext context) {
    final counterDataProvider = Provider.of<providerData>(context);
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login Credentials"),
        ),
      ),
      body: Column(
        children: [
          textfield(
            cont: _usernameController,
            hint: "Enter Username",
            logo: Icon(Icons.person_pin),
          ),
          textfield(
            cont: _passwordController,
            hint: "Enter Password",
            logo: Icon(Icons.password),
          ),
          TextButton(
              onPressed: (() {
                final value =
                    _usernameController.text + "   " + _passwordController.text;
                counterDataProvider.addData(value);
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dataview(),
                  ),
                );
              }),
              child: Text("ADD"))
        ],
      ),
    );
  }
}
