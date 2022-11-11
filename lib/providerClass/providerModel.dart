import 'package:flutter/cupertino.dart';

class providerModel with ChangeNotifier{
  int count=0;
  increment(){
    count+=5;
  notifyListeners();
  }
  decrement(){
    count-=3;
    notifyListeners();
  }
}