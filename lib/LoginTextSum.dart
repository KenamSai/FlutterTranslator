import 'package:first_flutter/routes/App_Routes.dart';
import 'package:flutter/material.dart';

class LoginTextSum extends StatefulWidget {
  const LoginTextSum({super.key});

  @override
  State<LoginTextSum> createState() => _LoginTextSumState();
}

class _LoginTextSumState extends State<LoginTextSum> {
  TextEditingController _text1Controller = TextEditingController();
  TextEditingController _text2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Sum"),
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 400, right: 400, top: 10, bottom: 10),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                controller: _text1Controller,
                decoration: InputDecoration(
                  labelText: "enter text1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: _text2Controller,
                decoration: InputDecoration(
                  labelText: "enter text2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, App_Routes.homePagesum,
                        arguments: [_text1Controller.text, _text2Controller.text]);
                  },
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
