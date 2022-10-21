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

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 400, right: 400, top: 10, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "enter email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                controller: _emailController,
                validator: ((value) {
                  if (value!.isEmpty) {
                    return "enter email";
                  } else if (!isValidEmail(value)) {
                    return "enter valid email";
                  }
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 400, right: 400, top: 10, bottom: 10),
              child: TextFormField(
                obscureText: _passwordVisible,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  labelText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                controller: _pwdController,
                validator: ((value) {
                  if (value!.isEmpty) {
                    return "enter Password";
                  } else if (!isValidPassWord(value)) {
                    return "enter valid Password";
                  }
                }),
              ),
            ),
            TextButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {}
              },
              child: Text("LOG IN"),
            ),
          ],
        ),
      ),
    );
  }
}
