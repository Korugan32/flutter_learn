import 'package:flutter/material.dart';

class SayacViewModel extends ChangeNotifier {
  int sayac = 0;

  void arttir() {
    sayac++;
    notifyListeners();
  }

  void azalt() {
    sayac--;
    notifyListeners();
  }
}
