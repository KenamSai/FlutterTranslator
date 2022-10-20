import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 10, bottom: 10),
            child: TextField(
              cursorColor: Colors.red,
              maxLength: 10,
              decoration: const InputDecoration(hintText: ("Enter")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 10, bottom: 10),
            child: TextField(
              cursorColor: Colors.blue,
              maxLength: 10,
              decoration: const InputDecoration(hintText: ("Number Keyboard")),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 10, bottom: 10),
            child: TextField(
              cursorColor: Colors.blue,
              decoration: const InputDecoration(hintText: ("Multiple lines")),
              maxLines: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 10, bottom: 10),
            child: TextField(
              cursorColor: Colors.blue,
              maxLength: 10,
              decoration: const InputDecoration(
                hintText: ("Border"),
                enabledBorder: OutlineInputBorder(
                  borderRadius: (BorderRadius.all(Radius.circular(20.0))),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 10, bottom: 10),
            child: TextField(
              cursorColor: Colors.blue,
              maxLength: 10,
              decoration: const InputDecoration(hintText: ("Enter Password")),
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }
}
