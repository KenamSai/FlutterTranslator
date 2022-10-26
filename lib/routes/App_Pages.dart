import 'package:first_flutter/Country.dart';
import 'package:first_flutter/HomePageSum.dart';
import 'package:first_flutter/LoginTextSum.dart';
import 'package:first_flutter/Project1/ForgotPwd.dart';
import 'package:first_flutter/Project1/ListViewSample.dart';
import 'package:first_flutter/Project1/Login.dart';
import 'package:first_flutter/Project1/getStart.dart';
import 'package:first_flutter/Project1/signup.dart';
import 'package:first_flutter/routes/app_routes.dart';
import 'package:flutter/material.dart';

class App_Pages {
  static Map<String, WidgetBuilder> get routes {
    return {
      App_Routes.getstart:(context) => getStart(),
      App_Routes.login:(context) => Login(),
      App_Routes.signup:(context) => SignUp(),
      App_Routes.forgotPwd:(context) => ForgotPwd(),
      App_Routes.country:(context) => Country(),
      App_Routes.textsum:(context) => LoginTextSum(),
      App_Routes.homePagesum:(context) => HomePageSum(),
      App_Routes.listview:(context) => ListViewSample(),
    };
  }
}
