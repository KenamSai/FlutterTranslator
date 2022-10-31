import 'package:first_flutter/routes/App_Routes.dart';
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
      body: Column(
        children: [
          Text("Signed Up  Succesfully!"),
          TextButton(
              onPressed: () {
                Navigator.popUntil(
                    context, ModalRoute.withName(AppRoutes.getstart));
              },
              child:Text("Home"))
        ],
      ),
    );
  }
}
