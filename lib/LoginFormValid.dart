import 'package:first_flutter/Widgets/inputTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginFormValid extends StatefulWidget {
  const LoginFormValid({super.key});

  @override
  State<LoginFormValid> createState() => _LoginFormValidState();
}

class _LoginFormValidState extends State<LoginFormValid> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  bool _passwordVisible = false;
  bool isValidEmail(String value) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
  }

  bool isValidPassWord(String value) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value);
  }

  bool _isPasswordvisible = true;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            inputTextField(
              controller: _emailController,
              hinttext: "please enter email",
              prefixIcon: Icon(Icons.email_outlined),
              textColor: Colors.red,
            ),
            inputTextField(
              controller: _pwdController,
              hinttext: "please enter Password",
              prefixIcon: Icon(Icons.password),
              isSecured: true,
              isVisible: _isPasswordvisible,
              onTap: () {
                setState(() {
                  _isPasswordvisible = !_isPasswordvisible;
                });
              },
            ),
            TextButton(
              onPressed: () {
                // if (_formkey.currentState!.validate()) {}
              },
              child: Text("LOG IN"),
            ),
          ],
        ),
      ),
    );
  }
}
