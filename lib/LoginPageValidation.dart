import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Validations extends StatefulWidget {
  const Validations({super.key});

  @override
  State<Validations> createState() => _ValidationsState();
}

class _ValidationsState extends State<Validations> {
  void ValidationsMethod() {
    if (_emailController.text.isEmpty) {
      showAlert("Please enter email");
    } else if (_emailController.text.isNotEmpty &&
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_emailController.text)) {
      showAlert("please enter valid mail");
    } else if (_PasswordController.text.isEmpty) {
      showAlert("Please enter Password");
    } else if (_PasswordController.text.isNotEmpty &&
        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
            .hasMatch(_PasswordController.text)) {
      showAlert("""Please enter valid password
          Minimum 1 Upper case
          Minimum 1 lowercase
          Minimum 1 Numeric Number
          Minimum 1 Special Character
          Minimum length is 8""");
    }
  }

  showAlert(String message) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: Text(
              message,
              style: TextStyle(color: Colors.red),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "ok",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          );
        });
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validations"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 500, right: 500, top: 150, bottom: 5),
            child: TextField(
              controller: _emailController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: ("Enter username"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 500, right: 500, top: 10, bottom: 5),
            child: TextField(
              controller: _PasswordController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: ("Enter Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: ValidationsMethod,
            child: Text(
              "LOG IN",
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
        ]),
      ),
    );
  }
}
