import 'package:flutter/cupertino.dart';

class AddIncrement extends ChangeNotifier {
  int count = 0;
  get() => count;
  set(int _count) => count = _count;

  void incrementCounter() {
    count++;
    notifyListeners();
  }

  void decrementCounter() {
    count--;
    notifyListeners();
  }

  void reSet() {
    count = 0;
    notifyListeners();
  }
}
