import 'package:flutter/cupertino.dart';

class providerData with ChangeNotifier {
  static List<dynamic> data = [];
  addData(String val) {
    data.add(val);
    notifyListeners();
  }
}
