import 'package:flutter/material.dart';

class providerexample extends ChangeNotifier{
List <int> numbers=[1,2,3,4,5];

  void increment(){
    numbers.add(numbers.last+1);
    notifyListeners();
  }
}