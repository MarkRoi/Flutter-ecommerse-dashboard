import 'package:flutter/material.dart';

class MainScreenProvider extends ChangeNotifier {
  Widget? selectedScreen;

  void setScreen(Widget screen) {
    selectedScreen = screen;
    notifyListeners();
  }
}