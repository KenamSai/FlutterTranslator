import 'package:first_flutter/HomePageSum.dart';
import 'package:first_flutter/LoginTextSum.dart';
import 'package:first_flutter/Project1/ForgotPwd.dart';
import 'package:first_flutter/Project1/ListViewSample.dart';
import 'package:flutter/material.dart';

import '../Project1/Login.dart';
import '../Project1/getStart.dart';
import '../Project1/signup.dart';
import 'app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.getstart: ((context) => getStart()),
      AppRoutes.signin: ((context) => Login()),
      AppRoutes.signup: ((context) => SignUp()),
      AppRoutes.password: ((context) => ForgotPwd()),
      AppRoutes.listview:((context) => const ListViewSample()),
      AppRoutes.textsum:((context) => LoginTextSum()),
      AppRoutes.homepagesum:(context) => HomePageSum(),
    };
  }
}
