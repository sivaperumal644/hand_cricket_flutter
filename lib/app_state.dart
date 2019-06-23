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
  Color youRedColor = Color.fromRGBO(221, 63, 63, 100);
  Color cpuGrayColor = Color.fromRGBO(119,119,119,100);
  Color scoreLightGray = Color.fromRGBO(168,168,168,100);
  Color shadowColor = Color.fromRGBO(255, 150, 150, 0.6);
  bool isMatchStart = false;

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

  void setYouRedColor(Color text){
    youRedColor = text;
    notifyListeners();
  }

  void setCpuGrayColor(Color text){
    cpuGrayColor = text;
    notifyListeners();
  }

  void setScoreLightGray(Color text){
    scoreLightGray = text;
    notifyListeners();
  }

  void setShadowColor(Color text){
    shadowColor = text;
    notifyListeners();
  }

  void setIsMatchStart(bool text){
    isMatchStart = text;
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
  Color get getYouRedColor => youRedColor;
  Color get getCpuGrayColor => cpuGrayColor;
  Color get getScoreLightGray => scoreLightGray;
  Color get getShadowColor => shadowColor;
  bool get getIsMatchStart => isMatchStart;
}
