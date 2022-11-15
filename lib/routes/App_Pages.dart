import 'package:first_flutter/API_Integration/LoginApi.dart';
import 'package:first_flutter/Country.dart';
import 'package:first_flutter/Customer/Customer.dart';
import 'package:first_flutter/DataEntry.dart';
import 'package:first_flutter/DataView.dart';
import 'package:first_flutter/HomePageSum.dart';
import 'package:first_flutter/LoginFormValid.dart';
import 'package:first_flutter/LoginTextSum.dart';
import 'package:first_flutter/MpinUserData.dart';
import 'package:first_flutter/OTPScreen.dart';
import 'package:first_flutter/Project1/ForgotPwd.dart';
import 'package:first_flutter/Project1/ListViewSample.dart';
import 'package:first_flutter/Project1/Login.dart';
import 'package:first_flutter/Project1/getStart.dart';
import 'package:first_flutter/Project1/signup.dart';
import 'package:first_flutter/Shared_preferences/shared.dart';
import 'package:first_flutter/checkboxes/check_box.dart';
import 'package:first_flutter/cricketers/Counter.dart';
import 'package:first_flutter/cricketers/RetrieveData.dart';
import 'package:first_flutter/cricketers/checkboxlist.dart';
import 'package:first_flutter/cricketers/createCricketers.dart';
import 'package:first_flutter/inputImage.dart';
import 'package:first_flutter/main.dart';
import 'package:first_flutter/providerClass/counter_Provider.dart';
import 'package:first_flutter/providerClass/dataentry.dart';
import 'package:first_flutter/providerClass/dataview.dart';
import 'package:first_flutter/routes/App_Routes.dart';
import 'package:first_flutter/snack.dart';
import 'package:first_flutter/spink.dart';
import 'package:flutter/material.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.getstart: (context) => getStart(),
      AppRoutes.login: (context) => Login(),
      AppRoutes.signup: (context) => SignUp(),
      AppRoutes.forgotPwd: (context) => ForgotPwd(),
      AppRoutes.country: (context) => Country(),
      AppRoutes.textsum: (context) => LoginTextSum(),
      AppRoutes.homePagesum: (context) => HomePageSum(),
      AppRoutes.listview: (context) => ListViewSample(),
      AppRoutes.dataview: (context) => DataView(),
      AppRoutes.dataentry: (context) => DataEntry(),
      AppRoutes.loginformvalid: ((context) => LoginFormValid()),
      AppRoutes.customer: (context) => Customer(),
      AppRoutes.shared: (context) => shared(),
      AppRoutes.loginapi: (context) => LoginApi(),
      AppRoutes.mpin:(context) => MpinUserData(),
      AppRoutes.otp:(context) => OTPScreen(),
      AppRoutes.camera:(context) => inputImage(),
      AppRoutes.cricket:(context) => createCricketers(),
      AppRoutes.counterValue:(context) => Counter(),
      AppRoutes.check:(context) => checkboxlist(),
      AppRoutes.retrievecricData:(context) => retrieveData(),
      AppRoutes.counterData:(context) => counterProvider(),
      AppRoutes.prodataentry:(context) => dataentry(),
      AppRoutes.prodataview:(context) => dataview(),
      AppRoutes.spinkit:(context) => loader(),
      AppRoutes.checkboxStr:(context) => check_box(),
      AppRoutes.snack:(context) => snack_bar(),
    };
  }
}
