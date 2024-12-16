import 'package:flutter/material.dart';

class providerexample extends ChangeNotifier{
  int _count=6;
  int get count=>_count;

  void increment(){
    _count++;
    notifyListeners();
  }
  void printable(){
    int ans=_count;
    print("$ans");
    notifyListeners();
  }
}