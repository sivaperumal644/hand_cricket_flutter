import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  AppState();

  int selectedInput = 0;
  int oddOrEven;
  

  void setSelectedInput(int text) {
    selectedInput = text;
    notifyListeners();
  }

  void setOddOrEven(int text){
    oddOrEven = text;
    notifyListeners();
  }

  int get getSelectedInput => selectedInput;
  int get getOddOrEven => oddOrEven;
}