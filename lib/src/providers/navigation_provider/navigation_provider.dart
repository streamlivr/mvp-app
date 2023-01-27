import 'package:flutter/foundation.dart';

class NavigationProvider extends ChangeNotifier {
  int _selected = 0;

  int get selected => _selected;

  changeSelected(int index) {
    _selected = index;
    notifyListeners();
  }
}
