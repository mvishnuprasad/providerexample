import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class NumberslistProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4, 5];
  void add() {
    int num = numbers.last;
    numbers.add(num + 1);
    notifyListeners();
  }
}
