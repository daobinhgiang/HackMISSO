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

  bool _DashboardSelected = false;
  bool get DashboardSelected => _DashboardSelected;
  set DashboardSelected(bool value) {
    _DashboardSelected = value;
  }

  bool _ChatSelected = false;
  bool get ChatSelected => _ChatSelected;
  set ChatSelected(bool value) {
    _ChatSelected = value;
  }

  bool _GroupProjectSelected = false;
  bool get GroupProjectSelected => _GroupProjectSelected;
  set GroupProjectSelected(bool value) {
    _GroupProjectSelected = value;
  }

  bool _AllTasksSelected = false;
  bool get AllTasksSelected => _AllTasksSelected;
  set AllTasksSelected(bool value) {
    _AllTasksSelected = value;
  }
}
