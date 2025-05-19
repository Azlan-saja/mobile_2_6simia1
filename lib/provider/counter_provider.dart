import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _valueCounter = 0;
  int get hasil => _valueCounter;

  kuranngin() {
    _valueCounter = _valueCounter - 1;
    notifyListeners();
  }

  tambahin() {
    _valueCounter = _valueCounter + 1;
    notifyListeners();
  }
}
