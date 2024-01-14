import 'package:flutter/cupertino.dart';

class CountControllerProvider extends ChangeNotifier{

  int count = 0;
  void increse(){
    count++;
    notifyListeners();
  }
}