import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {

  int _counter = 0;
  int get counter => _counter;

  increase() {
    _counter += 1;
    notifyListeners();
  }

  decrease() {
    _counter -= 1;
    notifyListeners();
  }
}