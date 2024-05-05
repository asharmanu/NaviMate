import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool value) {
    _showFullList = value;
  }

  bool _showFullList2 = true;
  bool get showFullList2 => _showFullList2;
  set showFullList2(bool value) {
    _showFullList2 = value;
  }

  bool _sort = false;
  bool get sort => _sort;
  set sort(bool value) {
    _sort = value;
  }

  bool _showFullList3 = true;
  bool get showFullList3 => _showFullList3;
  set showFullList3(bool value) {
    _showFullList3 = value;
  }
}
