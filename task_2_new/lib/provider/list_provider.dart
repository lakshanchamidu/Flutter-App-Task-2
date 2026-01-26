import 'package:flutter/material.dart';

class MoodListProvider extends ChangeNotifier{
  int selectedIndex = -1;
  List<String> moods = [
    'Joyful',
    'Cheerful',
    'Content',
    'Calm',
    'Excited',
    'Relaxed',
  ];

  void toggle(int index){
    if (selectedIndex == index){
      selectedIndex = -1;
    }else {
      selectedIndex = index;
    }
    notifyListeners();
  }

   void select(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}