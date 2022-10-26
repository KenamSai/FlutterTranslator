import 'package:first_flutter/Project1/Login.dart';
import 'package:first_flutter/routes/App_Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class getStart extends StatefulWidget {
  const getStart({super.key});

  @override
  State<getStart> createState() => _getStartState();
}

class _getStartState extends State<getStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get started"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: TextButton(
                onPressed: () {
                   Navigator.pushNamed(
                     context,
                     App_Routes.login,
                   );
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, App_Routes.signup);
                },
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
             Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, App_Routes.forgotPwd);
                },
                child: Text(
                  "FORGOT PWD",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
