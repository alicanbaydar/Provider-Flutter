import 'package:flutter/material.dart';

class StateData with ChangeNotifier {
  String sehir = 'İzmir';
  int? yas = 27;

  void newCity(String city) {
    sehir = city;
    notifyListeners();
  }
}
