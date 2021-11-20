import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider({required int initialCounter}) : _counter = initialCounter;
  int _counter;
  get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
