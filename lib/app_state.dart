import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  AppState();

  int selectedInput = 0;
  int oddOrEven;
  int totalOvers;
  int battingOrBowling;
  int cpuScore = 0;
  int userScore = 0;
  int ballsCompleted = 0;
  bool firstBattingCompleted = false;
  bool getBack = true;
  String cpuOvers = '0.0';
  String userOvers = '0.0';
  int currentUserInput = 0;
  int currentCpuInput = 0;
  bool isInputVisible = false;
  double inputContainerStart = 1.0;
  double inputContainerEnd = 0.0;
  

  void setTotalOvers(int text) {
    totalOvers = text;
    notifyListeners();
  }

  void setSelectedInput(int text) {
    selectedInput = text;
    notifyListeners();
  }

  void setOddOrEven(int text) {
    oddOrEven = text;
    notifyListeners();
  }

  void setBattingOrBowling(int text) {
    battingOrBowling = text;
    notifyListeners();
  }

  void setUserScore(int text) {
    userScore = text;
    notifyListeners();
  }

  void setCpuScore(int text) {
    cpuScore = text;
    notifyListeners();
  }

  void setBallsCompleted(int text) {
    ballsCompleted = text;
    notifyListeners();
  }

  void setFirstBattingCompleted(bool text) {
    firstBattingCompleted = text;
    notifyListeners();
  }

  void setCpuOvers(String text) {
    cpuOvers = text;
    notifyListeners();
  }

  void setUserOvers(String text) {
    userOvers = text;
    notifyListeners();
  }

  void setCurrentUserInput(int text) {
    currentUserInput = text;
    notifyListeners();
  }

  void setCurrentCpuInput(int text) {
    currentCpuInput = text;
    notifyListeners();
  }

  void setGetBack(bool text) {
    getBack = text;
    notifyListeners();
  }

  void setIsInputVisible(bool text) {
    isInputVisible = text;
    notifyListeners();
  }

  void setInputContainerStart(double text) {
    inputContainerStart = text;
    notifyListeners();
  }

  void setInputContainerEnd(double text) {
    inputContainerEnd = text;
    notifyListeners();
  }

  int get getTotalOvers => totalOvers;
  int get getSelectedInput => selectedInput;
  int get getOddOrEven => oddOrEven;
  int get getBattingOrBowling => battingOrBowling;
  int get getUserScore => userScore;
  int get getCpuScore => cpuScore;
  int get getBallsCompleted => ballsCompleted;
  bool get getFirstBattingCompleted => firstBattingCompleted;
  String get getCpuOvers => cpuOvers;
  String get getUserOvers => userOvers;
  int get getCurrentUserInput => currentUserInput;
  int get getCurrentCpuInput => currentCpuInput;
  bool get getGetBack => getBack;
  bool get getIsInputVisible => isInputVisible;
  double get getInputContainerStart => inputContainerStart;
  double get getInputContainerEnd => inputContainerEnd;
}
