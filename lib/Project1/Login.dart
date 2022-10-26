
import 'package:first_flutter/routes/App_Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Log In"),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Form(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 400, right: 400, top: 100, bottom: 10),
            child: TextFormField(
              decoration: InputDecoration(labelText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 400, right: 400, top: 40, bottom: 10),
            child: TextFormField(
              decoration: InputDecoration(labelText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 400,
              right: 400,
              top: 40,
            ),
            child: TextButton(
              onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName(App_Routes.getstart));
              },
              child: Text(
                "SIGN IN",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 400,
              right: 400,
              top: 10,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "BACK",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
