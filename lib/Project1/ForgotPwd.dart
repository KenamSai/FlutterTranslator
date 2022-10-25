
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({super.key});

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "PassWord",
          ),
        ),
      ),
      body: Form(
        child: TextButton(
          onPressed: () {
          },
          child: Text("Reset Password"),
        ),
      ),
    );
  }
}
