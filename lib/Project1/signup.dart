
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Sign up",
          ),
        ),
      ),
      body: Form(
        child: TextButton(
          onPressed: () {
            //Navigator.pushNamed(context, AppRoutes.password);
          },
          child: Text("Details"),
        ),
      ),
    );
  }
}
