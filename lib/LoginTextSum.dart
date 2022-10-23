import 'package:first_flutter/HomePageSum.dart';
import 'package:first_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginTextSum extends StatefulWidget {
  const LoginTextSum({super.key});

  @override
  State<LoginTextSum> createState() => _LoginTextSumState();
}

class _LoginTextSumState extends State<LoginTextSum> {
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
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => HomePageSum()));
                    Navigator.pushNamed(context, AppRoutes.homepagesum,arguments: ({"name":"Kenam"}));
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
