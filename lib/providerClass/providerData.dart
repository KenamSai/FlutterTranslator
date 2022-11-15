import 'package:flutter/cupertino.dart';

class providerData with ChangeNotifier {
   List<dynamic> data = [];
  addData(String val) {
    data.add(val);
    notifyListeners();
  }

}
