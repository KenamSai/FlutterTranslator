import 'package:dio/dio.dart';
import 'package:first_flutter/CONSTANTS/apiConstants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginApi extends StatefulWidget {
  const LoginApi({super.key});

  @override
  State<LoginApi> createState() => _LoginApiState();
}

class _LoginApiState extends State<LoginApi> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("profile.json", width: 300, height: 300),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: ("Enter username."),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 30, left: 30),
              child: TextField(
                controller: _pwdController,
                decoration: InputDecoration(
                  hintText: ("Enter password."),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  requestApi();
                },
                child: Text("SUBMIT"))
          ],
        ),
      ),
    );
  }

  void requestApi() async {
    final requestUrl = apiConstants.baseUrl + apiConstants.endPoint;
    final requestPayLoad = {"password": "Ak@123k", "phoneNumber": "7205807205"};
    final _dioObject = Dio();
    try {
      final _response = await _dioObject.post(
        requestUrl,
        data: requestPayLoad,
      );
      print(_response.data);
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        final errorMessage = e.response?.data["message"];
          final statusMessage = e.response?.data["status"];
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("error message"),
              content: Text("""$errorMessage
$statusMessage"""),
              actions: [
                TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text("OK"),
                )
              ],
            );
          },
        );
      } else if (e.response?.statusCode == 500) {
        final errorMessage = e.response?.data["message"];
        final statusMessage = e.response?.data["status"];
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("error message"),
              content: Text("""$errorMessage
              $statusMessage"""),
              actions: [
                TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text("OK"),
                )
              ],
            );
          },
        );
      }
    }
  }
}
